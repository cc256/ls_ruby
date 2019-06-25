def predict_weather
  #sunshine = ['true', 'false'].sample   #bug: boolean, instead of string
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather