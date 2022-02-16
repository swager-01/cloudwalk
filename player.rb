class Player

    attr_reader :kill_type, :name

    def initialize(name, kill_type)
      @name = name
      @kill_type = kill_type
    end

    def to_s
        "Player: #{@name} Killed with: #{@kill_type}"
    end

end