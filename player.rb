class Player

    attr_reader :kill_type, :name

    def initialize(name, kill_type)
      @name = name
      @kill_type = kill_type
    end

    def to_json
    end

    def to_s
         #puts JSON.parse(player).to_json 
        "KILLER: #{@name} MOD: #{@kill_type}"
    end

end