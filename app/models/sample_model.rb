class Workout
  attr_accessor :wod
  
    def initialize(intensity,length,type,location,topic)
        @intensity = intensity
        @length = length
        @type = type
        @location = location
        @topic = topic
        @wod = []
        @resttime = 0
        @wcardio = ["1 minute lunges","1 minute goblet squats","1 minute burpees","1 minute mountain climbers","1 minute squat jumps","1 minute wallsit","1 minute jumping jacks","1 minute pushups","1 minute plank"]
        @wstrength = ["1 minute plank","1 minute seconds pushups","1 minute alternating side plank","1 minute squats","1 minute burpees","1 minute lunges","1 minute crunches","1 minute dips"]
        @wdumbells = ["1 minute dumbell snatches","1 minute kettle bell swings","1 minute hammer curls","1 minute tricep extension","1 minute bicep curls to shoulder press","1 minute reverse curls","1 minute stationary lunge with dumbells by side"]
        @worktime = 0
    end
    def rest 
        calcrest
        @wod.push("#{@resttime} seconds rest")
    end
    def wodmaker
        
        if @intensity == "easy"
            if @topic == "dumbells"
                i = 0
                until i == 5 do
                    @wod.push(@wdumbells[i])
                    i += 1
                    rest
                end
            elsif @topic == "none" && @type == "strength"
                 i = 0
                until i == 5 do
                    @wod.push(@wstrength[i])
                    i += 1
                    rest
                end
            elsif @topic == "none" && @type == "cardio"
                 i = 0
                until i == 5 do
                    @wod.push(@wcardio[i])
                    i += 1
                    rest
                end
            end
            
        elsif @intensity == "medium"
            if @topic == "dumbells"
                i = 0
                until i == 6 do
                 @wod.push(@wdumbells[i])
                    i += 1
                    rest
                end
            elsif @topic == "none" && @type == "strength"
                i = 0
                until i == 6 do
                    @wod.push(@wstrength[i])
                    i += 1
                    rest
                end
            elsif @topic == "none" && @type == "cardio"
                 i = 0
                until i == 6 do
                    @wod.push(@wcardio[i])
                    i += 1
                    rest
                end
            end
        elsif @intensity == "hard"
            if @topic == "dumbells"
                i = 0
                until i == 7 do
                 @wod.push(@wdumbells[i])
                    i += 1
                    rest
                end
            elsif @topic == "none" && @type == "strength"
                 i = 0
                until i == 7 do
                    @wod.push(@wstrength[i])
                    i += 1
                    rest
                end
            elsif @topic == "none" && @type == "cardio"
                 i = 0
                until i == 7 do
                    @wod.push(@wcardio[i])
                    i += 1
                    rest
                end
            end
        end
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
            return "DO THREE SET"
        elsif @length == "sixty"
            return "DO SIX SET"
        elsif @length == "ten"
            return "DO ONE SET"
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