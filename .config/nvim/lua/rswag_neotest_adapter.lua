local lib = require("neotest.lib")

local RSWAG_QUERY = [[
  ; Existing neotest-rspec patterns (describe/context/feature/shared_examples)
  ((call
    method: (identifier) @func_name (#match? @func_name "^(describe|shared_examples|context|feature)$")
    arguments: (argument_list (_) @namespace.name)
  )) @namespace.definition

  ((call
    method: (identifier) @namespace.name (#match? @namespace.name "^(describe|shared_examples|context|feature)$")
    .
    block: (_)
  )) @namespace.definition

  ((call
    method: (identifier) @func_name (#match? @func_name "^(it|its|specify)$")
    block: (block (_) @test.name)
  )) @test.definition

  ((call
    method: (identifier) @func_name (#match? @func_name "^(it|its|specify)$")
    block: (do_block (_) @test.name)
    !arguments
  )) @test.definition

  ((call
    method: (identifier) @func_name (#match? @func_name "^(it|its|scenario|include_examples|it_behaves_like)$")
    arguments: (argument_list (_) @test.name)
  )) @test.definition

  ; rswag: path/HTTP method/response blocks → namespaces
  ((call
    method: (identifier) @func_name (#match? @func_name "^(path|get|post|put|delete|patch|response)$")
    arguments: (argument_list (_) @namespace.name)
  )) @namespace.definition

  ; rswag: run_test! → test
  ((call
    method: (identifier) @func_name (#match? @func_name "^run_test!$")
    arguments: (argument_list (_) @test.name)
  )) @test.definition
]]

-- Default build_position logic from neotest (duplicated here to force in-process execution)
local function build_position(file_path, source, captured_nodes, _)
  local match_type
  if captured_nodes["test.name"] then
    match_type = "test"
  elseif captured_nodes["namespace.name"] then
    match_type = "namespace"
  end
  if not match_type then return end

  local name = vim.treesitter.get_node_text(captured_nodes[match_type .. ".name"], source)
  local definition = captured_nodes[match_type .. ".definition"]
  return {
    type = match_type,
    path = file_path,
    name = name,
    range = { definition:range() },
  }
end

local function is_rswag_file(path)
  return path:match("/swagger/.*_spec%.rb$") ~= nil
end

return function(opts)
  local rspec = require("neotest-rspec")(opts)
  local original_discover_positions = rspec.discover_positions

  rspec.discover_positions = function(path)
    if not is_rswag_file(path) then
      return original_discover_positions(path)
    end

    -- Pass build_position as a function to force in-process execution
    -- (subprocess path cannot handle function values, so neotest falls back to in-process)
    return lib.treesitter.parse_positions(path, RSWAG_QUERY, {
      nested_tests = true,
      require_namespaces = true,
      position_id = "require('neotest-rspec.utils').generate_treesitter_id",
      build_position = build_position,
    })
  end

  return rspec
end
