secret_number = rand(1..100)

puts "Hello, welcome to Ruby Guessing Game"
puts "Guess a number between 1 and 100!"

guess = gets.chomp.to_i

if guess <= 1 and guess >= 100
  puts "Your number is out of range :("
end

if guess == secret_number
  puts "Yay, you got it! See you soon!"
else
  puts "I'm afraid you did not guess the number. Bye!"
end