require "rubygems"

begin
	require "awesome_print"
	Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
	warn "Couldn't load awesome_print: #{err}"
end

begin
	require 'hirb'

	Hirb.enable

	old_print = Pry.config.print
	Pry.config.print = proc do |output, value|
		Hirb::View.view_or_page_output(value) || old_print.call(output, value)
	end
rescue LoadError => err
	warn "Couldn't load Hirb: #{err}"
end


# vim FTW
Pry.config.editor = "gvim --nofork"

# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]

# Launch Pry with access to the entire Rails stack.
# If you have Pry in your Gemfile, you can pass: ./script/console --irb=pry instead.
# If you don't, you can load it through the lines below :)
rails = File.join Dir.getwd, 'config', 'environment.rb'
if File.exist?(rails) && ENV['SKIP_RAILS'].nil?
  require rails

  if Rails.version[0..0] == "2"
    require 'console_app'
    require 'console_with_helpers'
  elsif Rails.version[0..0] == "3"
    require 'rails/console/app'
    require 'rails/console/helpers'
  else
    warn "[WARN] cannot load Rails console commands (Not on Rails2 or Rails3?)"
  end
  if defined?(Rails) && Rails.env
    extend Rails::ConsoleMethods
  end
end
