module ControlCat
	class Chatter
		def say_hello
			puts  'This is ControlCat - Your Servers "Control Freak"'.green
		end

		def say_adios
			puts
			puts 'you killed me! Revive me with typing "Control_Cat" in you Shell'.colorize(:white).on_red
		end
	end
end