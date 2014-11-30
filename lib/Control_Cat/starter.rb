module ControlCat
	class Starter

		def is_first_start()
			if (File.exist?(ControlCat::PATH + ControlCat::CONFIGFILE))
				return true
			else
				return false
			end
		end

	end
end
