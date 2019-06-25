module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

sparky = GoodDog.new
puts sparky.class
sparky.speak("Arf!")

puts "---GoodDog ancestors---"
puts GoodDog.ancestors