return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      yamlls = {
        capabilities = {
          textDocument = {
            foldingRange = {
              dynamicRegistration = false,
              lineFoldingOnly = true,
            },
          },
        },
        on_attach = function(client)
          client.server_capabilities.documentFormattingProvider = false
        end,
        settings = {
          yaml = {
            format = { enable = false }, -- disable yamlls built-in formatter
          },
        },
      },
    },
  },
}
