require 'open-uri'
require 'json'
require File.expand_path("player")
require File.expand_path("game")
require File.expand_path("kill")

=begin
 TODO -> Pure Function: function as argument to dont repeat steps self.get_lines(file, match, f(n))
	     Implement  games[] segregated by InitGame
=end
class Main

	attr_accessor :game
		
	url = 'https://gist.githubusercontent.com/cloudwalk-tests/be1b636e58abff14088c8b5309f575d8/raw/df6ef4a9c0b326ce3760233ef24ae8bfa8e33940/qgames.log'
	
	def self.get_time(line)
		puts "TIME: #{line[0,6]}"
	end

	def self.increase_kills(line)
		kill = line.split(":").at(3).split(Regexp.union([',', "killed", "by", "\n"]))
		return Player.new kill.at(0), :mod_unknown#kill.kill_modes[kill.at(2)] --> Conversion Problem
	end

	@@game = Game.new

    def self.get_lines(file)
        File.open(file, "r") do |file|
            file.readlines.each_with_index do |line, idx|
                if line.match("InitGame")
                    get_time line
                elsif line.match("killed")
                    @@game.add increase_kills line
                else
                    if line.match("ShutdownGame")
                        get_time line
                    end
                end
            end
        end
    end
		
	get_lines "file.tmp"
	puts @@game.players
	
end