require 'colorize'

module ControlCat
	class Starter

		def initialize
			puts "Initializing Starter .... ".blue
			if(is_first_start)
				#TODO Create Config with User
			else
				#Load Config wiht Config_Loader to System Constansts
			end
		end

		# This Method should be called at first at every ControlCat start.
		#
		# This Method will check if ~/.ControlCat/config.yml exists
		def is_first_start()
			if (File.exist?(ControlCat::PATH + ControlCat::CONFIGFILE))
				puts "#{self.to_s} Tells: File exists returning true".green if ControlCat::DEBUG
				return true
			else
				puts "#{self.to_s} Tells: File does not exist returning false".red if ControlCat::DEBUG
				return false
			end
		end

		# # Config Loading
		# Loading Config with Function from Config_Loader Class
		# Confi will be stored in config.rb in ControlCat Module Conatans
		def load_config
		# load conifg
		end




	end
end
