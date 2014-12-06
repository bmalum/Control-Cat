require "Control_Cat/version"
require 'open3'


module ControlCat
	class ConfigLoader
		
		
		@@config = {
			"Version" => ControlCat::VERSION,
			"ZFS_Support" => true,
			"ZFS_Scrubbing" => true,
			"ZFS_Scrubbing_Interval" => "weekly",
			"ZFS_RW_Error_Report" => true,
			"ZFS_Stautus_Report" => "weekly"
		}
		
		def first_start
			system 'mkdir', '-p', ControlCat::PATH
			
			File.open(ControlCat::PATH+ControlCat::CONFIGFILE,'w') do |h| 
			   h.write @@config.to_yaml
			end

			cmd = 'zpool status'
			Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
		  		puts "stdout is:" + stdout.read
		  		puts "stderr is:" + stderr.read
			end
		end

		def read_config
			File.exists?('')
			@@config = YAML.load_file(ControlCat::PATH+ControlCat::CONFIGFILE)
		end

	end
end
