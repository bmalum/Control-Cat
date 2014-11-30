require 'colorize'

module ControlCat
	class Starter

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

	end
end
