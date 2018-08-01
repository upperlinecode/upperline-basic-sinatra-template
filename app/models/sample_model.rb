def healtheffects(value)
  if value == 20
    return "onyou"
  elsif value == 5
    return "onsome"
  end
  
end


def onyou(value)
  
  if value <= 30
    return "Healthy_Results"
  elsif value >= 31 && value <= 80
    return "Heat_Exhaustion"
  elsif value >= 81 
    return "Heat_Stroke"
  end
  
end