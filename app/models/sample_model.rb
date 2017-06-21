@jokes = {
   :animaljokes => {
      :good => {
         :long => "A duck, a skunk and a deer went out for dinner at a restaurant one night. When it came time to pay, the skunk didn’t have a scent, the deer didn’t have a buck so they put the meal on the duck’s bill.",
         :short => ["Q: Why did the cow cross the road? A: To get to the udder side.", "Q: Why do fish live in salt water? A: Because pepper makes them sneeze!"]},
      :bad => {
         :long => "A team of little animals and a team of big animals decided to play football. During the first half of the game, the big animals were winning. But during the second half,a centipede scored so many touchdowns that the little animals won the game. When the game was over, the chipmunk asked the centipede, “Where were you during the first half?” He replied “Putting on my shoes!”.", 
         :short => "Q: Why did the cat go to Minnesota? A: To get a mini soda!"
               }
   },

   :barjokes => { 
      :good => {
         :long => "A neutron walks into a bar and orders a drink. When the neutron gets his drink, he asks, 'Bartender, how much do I owe you?' The bartender replies, 'For you, neutron, no charge.'", 
         :short => "A man, his son and a dog walk into a bar.'Ow!''Ow!''Woof!'" 
         }, 
      :bad => {
         :long => "A man walks into a bar with a cheese sandwich under his arm. 'A pint of Guinness for me and the cheese sandwich,' he says to the barman.'I'm sorry, sir,' replies the barman, 'we don't serve food in here.'", 
         :short => "A nose walks into a bar and asks for a drink. The bartender says, 'Sorry, I can't serve you. You're already off your face.'"
         }
   },
   
   :knockknock => {
      :good => {
         :long => "Q: Knock, knock. Who's there? A broken pencil. A broken pencil who? A: Nevermind, it's pointless.", 
         :short => "Q: Knock, knock. Who's there? Nobel. Nobel who? A: No bell, that's why I knocked!"
       }, 
      :bad => {
         :long => "Q: Knock, knock. Who's there? Europe. Europe who? A: No, YOU'RE a poo.", 
         :short => "Knock, knock. Who’s there? Merry. Merry who? Merry Christmas!"
               }
      }
}
         

def joke(theme, quality, length)
         
         if theme == "animals"
            if quality == "good"
               if length == "long"
                  return @jokes[:animaljokes][:good][:long]
               elsif length == "short"
                  return @jokes[:animaljokes][:good][:short]
               end
            elsif quality == "bad"
               if length == "long"
                  return @jokes[:animaljokes][:bad][:long]
               elsif length == "short"
                  return @jokes[:animaljokes][:bad][:short]
               end
            end
        
         elsif theme == "bars"
            if quality == "good"
               if length == "long"
                  return @jokes[:barjokes][:good][:long]
               elsif length == "short"
                  return @jokes[:barjokes][:good][:short]
               end
            elsif quality == "bad"
               if length == "long"
                  return @jokes[:barjokes][:bad][:long]
               elsif length == "short"
                  return @jokes[:barjokes][:bad][:short]
               end
            end

         elsif theme == "knockknocks"
            if quality == "good"
               if length == "long"
                  return @jokes[:knockknock][:good][:long]
               elsif length == "short"
                  return @jokes[:knockknock][:good][:short]
               end
            elsif quality == "bad"
               if length == "long"
                  return @jokes[:knockknock][:bad][:long]
               elsif length == "short"
                  return @jokes[:knockknock][:bad][:short]
               end
            end
            
         end
      
end
