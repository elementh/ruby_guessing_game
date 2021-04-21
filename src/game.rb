require './secret'

class Game
  @min
  @max
  @secret

  def initialize(min, max)
    @min = min
    @max = max
    @secret = Secret.new(min, max)
  end

  def start
    playing = true

    puts "Guess a number between #{@min} and #{@max}"

    while playing
      guess = gets.chomp.to_i

      if guess <= @min or guess >= @max
        puts "Your number is out of range :("
        next
      end

      if @secret.matches(guess)
        puts "Yay, you got it! See you soon!"
        playing = false
      else
        puts "I'm afraid you did not guess the number. Try again!"
      end
    end
  end
end