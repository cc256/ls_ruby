
class GuessingGame  
  START_NUMBER = 1
  END_NUMBER = 100

  def initialize()
    self.guesses = 7
    self.random_number = Random.new().rand(START_NUMBER..END_NUMBER)
    #self.random_number = 5   #for test
  end

  def valid_number?(number_string)
     number_string.to_i.to_s == number_string && number_string.to_i != 0
  end

  def read_number()
    loop do
      print "Enter a number between #{START_NUMBER} and #{END_NUMBER}: "
      number = gets.chomp
      return number.to_i if valid_number?(number) && (number.to_i > START_NUMBER && number.to_i < END_NUMBER)
      print "Invalid guess. "     
    end
  end

  def play()
    self.guesses = 7         # resets.

    loop do
      puts "You have #{self.guesses} guesses remaining"
      number = read_number()

      if number < self.random_number()
        puts "Your guess is too low."
        puts
        self.guesses -= 1   # know that you can't use "self.guesses() -= 1" setter syntax, because of the "-="
      elsif number > self.random_number()
        puts "Your guess is too high."
        puts
        self.guesses -= 1
      else
        puts "That's the number!"
        puts
        puts "You won!"
        return  
      end

      break if self.guesses == 0 
    end 
    puts "You have no more guesses. You lost!"      # last line method return
  end

  protected 

  attr_reader :guesses
  attr_writer :guesses
  attr_reader :random_number
  attr_writer :random_number

end 


#Game
game = GuessingGame.new
game.play
puts
game.play                  # needs reset.







