def fortune(age)
   if age.to_i > 25
     return "you're old lol"
   else
     fortunes = [
            "you will not die.",
            "you will see the light in the room.",
            "try harder.",
            "don't believe in magical creatures because they are super not real.",
            "tomorrow there will be death for everyone but people like me.",
            "never look at your own face because it will disappoint you.",
            "beware of the noises in the shower curtain.",
            "when you poop in the garage die today.",
            "unless you really want to eat shoes, don't breathe in mosquitoes.",
            "always treasure a memory of your poop, and please leave."
         ]
         return fortunes.sample
   end   
end