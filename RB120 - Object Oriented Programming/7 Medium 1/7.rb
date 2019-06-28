
class GuessingGame  
  
  def initialize(start_number, end_number)    
    @start_number = start_number
    @end_number = end_number
    self.guesses = Math.log2(@end_number - @start_number).to_i + 1        #Math.log2(size_of_range).to_i + 1
    self.random_number = Random.new().rand(start_number..end_number)
    #self.random_number = 555   #for test
  end

  def valid_number?(number_string)
     number_string.to_i.to_s == number_string && number_string.to_i != 0
  end

  def read_number()
    loop do
      print "Enter a number between #{@start_number} and #{@end_number}: "
      number = gets.chomp
      return number.to_i if valid_number?(number) && (number.to_i > @start_number && number.to_i < @end_number  )
      print "Invalid guess. "     
    end
  end

  def play()
    #self.guesses = Math.log2(@end_number - @start_number).to_i + 1        # resets. DRY    
    initialize(@start_number, @end_number)                                 # good practice??

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
game = GuessingGame.new(501, 1500)
game.play
puts
game.play                  # needs reset.







