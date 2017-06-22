class Workout
  attr_accessor :wod
  
    def initialize(intensity,length,type,location,topic)
        @intensity = intensity
        @length = length
        @type = type
        @location = location
        @topic = topic
        @wod = []
    end
    def rest
        @wod.push("30 seconds rest")
    end
    def wodmaker
        if intensity == "easy"
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
        elsif intensity == "medium"
            # mediumwod
        elsif intensity == "hard"
            # hardwod
        end
    end
    
end
