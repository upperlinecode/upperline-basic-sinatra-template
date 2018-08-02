def healtheffects(value)
  if value == 20
    return "onyou"
  elsif value == 5
    return "onsome"
  end
  
end


def onyou(value)
  
  if value <= 40
    return "YHealthy_Results"
  elsif value >= 41 && value <= 80
    return "YHeat_Exhaustion"
  elsif value >= 81 
    return "YHeat_Stroke"
  end
end   
def onsome(value)
  if value <= 40
    return "SHealthy_Results"
  elsif value >= 41 && value <= 80
    return "SHeat_Exhaustion"
  elsif value >= 81 
    return "SHeat_Stroke"
  end
end
def health_generator(user_value)
  
  if user_value == 22
    return "op1"
  elsif user_value == 25
    return "op2"
  elsif user_value <= 16
    return "op3"
  elsif user_value <= 108
    return "op4"
    elsif user_value == 112
    return "op5"
  elsif user_value == 115
    return "op6"
  end
  
end
