require "rubygems"
require "awesome_print"

Pry.print = proc { |output, value| output.puts value.ai }

require 'hirb'

Hirb.enable

Pry.config.print = proc do |output, value|
  Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
end
