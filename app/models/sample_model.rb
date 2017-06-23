class Workout
  attr_accessor :wod
  
    def initialize(intensity,length,type,location,topic)
        @intensity = intensity
        @length = length
        @type = type
        @location = location
        @topic = topic
        @wod = []
        @resttime = "error"
        @movementscardio = ["lunges","goblet squats","burpees","mountain climbers","squat jumps","wallsit","jumping jacks","pushups","plank"]
        @movementsstrength = ["plank","pushups"]
        @movementsstrengthdumbells = ["dumbell snatches","kettle bell swings","hammer curls","tricep extension","bicep curls to shoulder press"]
        @worktime = "error"
    end
    def rest 
        calcrest
        @wod.push(@resttime + "seconds rest")
    end
    # def wodmaker
    #     if @type == "strength"
    #         @wod.push("1 minute alternating dumbell snatches")
    #         rest
    #         @wod.push("1 minute kettle bell swings")
    #         rest
    #         @wod.push("1 minute plank")
    #         rest
    #         @wod.push("30 seconds of pushups")
    #         rest
    #         @wod.push("1 minute hammer curls")
    #         rest
    #         @wod.push("1 minute of tricep extension")
    #         rest
    #         @wod.push("1 minute of lunges")
    #         rest
    #         @wod.push("30 seconds of pushups")
    #     elsif @type == "cardio"
    #         @wod.push("1 minute of goblet squats")
    #         rest
    #         @wod.push("30 seconds of mountain climbers")
    #         rest
    #         @wod.push("1 minute of squat jumps")
    #         rest
    #         @wod.push("30 seconds of burpees")
    #         rest
    #         @wod.push("1 minute wallsit")
    #         rest
    #         @wod.push("1 minute plank")
    #         rest
    #         @wod.push("30 seconds of pushups")
    #         rest
    #         @wod.push("1 minute of jumping jacks")
    #     end
    # end
    def rounds
        if @length == "thirty"
            return "DO THREE ROUNDS"
        elsif @length == "sixty"
            return "DO SIX ROUNDS"
        end
    end
    def calcrest
        if @intensity == "hard"
            @resttime = 30
        elsif @intensity == "medium"
            @resttime = 45
        elsif @intensity == "easy"
            @resttime = 60
        end
        @worktime = 120 - @resttime      
    end
    
end


test = Workout.new("intensity","length","cardio","location","topic")
test.wodmaker
puts test.wod