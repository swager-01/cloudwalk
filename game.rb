class Game

    attr_reader :players, :total_kills

    def initialize
      @players = []
      @total_kills = 0
    end

    def add(player)
        @players << player
        @@total_kills++
    end

    def to_json
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