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
    end
    def rest 
        calcrest
        @wod.push(@resttime + " rest")
    end
    def wodmaker
        if @type == "strength"
            @wod.push("1 minute alternating dumbell snatches")
            @wod.push("30 seconds rest")
            @wod.push("1 minute kettle bell swings")
            @wod.push("30 seconds rest")
            @wod.push("1 minute plank")
            @wod.push("30 seconds rest")
            @wod.push("30 seconds of pushups")
            rest
            @wod.push("1 minute hammer curls")
            rest
            @wod.push("1 minute of tricep extension")
            rest
            @wod.push("1 minute of lunges")
            rest
            @wod.push("30 seconds of pushups")
        elsif @type == "cardio"
            @wod.push("1 minute of goblet squats")
            rest
            @wod.push("30 seconds of mountain climbers")
            rest
            @wod.push("1 minute of squat jumps")
            rest
            @wod.push("30 seconds of burpees")
            rest
            @wod.push("1 minute wallsit")
            rest
            @wod.push("1 minute plank")
            rest
            @wod.push("30 seconds of pushups")
            rest
            @wod.push("1 minute of jumping jacks")
        end
    end
    def rounds
        if @length == "thirty"
            return "DO THREE ROUNDS"
        elsif @length == "sixty"
            return "DO SIX ROUNDS"
        end
    end
    def calcrest
        if @intensity == "hard"
            @resttime = "30 seconds"
        elsif @intensity == "medium"
            @resttime = "45 seconds"
        elsif @intensity == "easy"
            @resttime = "1 minute"
        end
            
    end
    
end


test = Workout.new("intensity","length","cardio","location","topic")
test.wodmaker
puts test.wod