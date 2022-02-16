class Game

    attr_reader :players, :total_kills

    def initialize
      @players = []
    end

    def self.verify_total_kill(player)
      if(player.include? "<word>")
        @@total_kills -= @@total_kills
      else
        @@total_kills += @@total_kills
      end
    end

    def add(player)
        @players << player
    end

    def to_s
      players.each do |player|
        
      end  
    end
end    


=begin
"game_1": {
    "total_kills": 45,
    "players": ["Dono da bola", "Isgalamido", "Zeh"],
    "kills": {
      "Dono da bola": 5,
      "Isgalamido": 18,
      "Zeh": 20
      }
    }
=end