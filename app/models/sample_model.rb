class SnippetySnip
    def initialize(name="Larry")
     @name = name
     @attack = rand(1..5)
     @health = rand(18..22)
     @speed = rand(8..12)
    end
   
    def attack()
        @attack
    end
    
    def health()
        @health
    end
    
    def name()
       @name 
    end
    
    def speed()
        @speed
    end
    
    def health=(health)
        @health = health
    end
    
    
    def crustacean_altercation(enemy)
    until self.health <= 0 || enemy.health <= 0
     if self.speed < enemy.speed
        self.health=(self.health - enemy.attack)
        enemy.health=(enemy.health - self.attack)
         if self.health < 0
         self.health=(0)
         end
         if enemy.health < 0
         enemy.health=(0)
         end
        puts "#{enemy.name} attacked, you now have #{self.health} health...you attacked, #{enemy.name} now has #{enemy.health} health"
    elsif self.speed > enemy.speed
        enemy.health=(enemy.health - self.attack)
        self.health=(self.health - enemy.attack)
         if self.health < 0
         self.health=(0)
         end
         if enemy.health < 0
         enemy.health=(0)
         end
        puts "you attacked, #{enemy.name} now has #{enemy.health} health...#{enemy.name} attacked, you now have #{self.health} health"
     end
     end #until
    
    if self.health == 0
        puts "you lose! :("
    elsif enemy.health == 0
        puts "you win! :)"
    end #if statement

    end #method crustacean_altercation
end #class 


larry = SnippetySnip.new()
barry = SnippetySnip.new("Barry")

puts larry.crustacean_altercation(barry)