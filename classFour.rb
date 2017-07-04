# Method overriding

class Creature
    def initialize(name)
        @name = name
    end
  
    def fight
        puts "Punch to the chops!"
    end
end

class Dragon < Creature
    def fight
    	super
        puts "Breathes fire!"
    end
end

creature = Dragon.new("Godzilla")
creature.fight