require "Control_Cat/version"
require "Control_Cat/Chatter"

require 'colorize'
require 'fileutils'
require 'yaml'

module ControlCat
	class ConfigLoader
		def first_start
			system 'mkdir', '-p', ENV['HOME']+'/.ControlCat/'
			grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
			File.open(ENV['HOME']+'/.ControlCat/settings.yml','w') do |h| 
			   h.write grades.to_yaml
			end
		end

		def read_config
			config = YAML.load_file('$HOME/.ControlCat/settings.yml')
		end
	end
end
