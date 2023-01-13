# This is a playground project that I created myself based
# on the freeCodeCamp Ruby tutorial secert word guessing game

file = File.open("secret-word.txt", "r")

secret_word = file.read

# Handles guess section variables
guess = ""
guess_count = 0
guess_limit = 5
out_of_guesses = false

# Handles hint section variables
hint = Array["It is a type of drink", "It makes a good car freshener", "You are out of hints"]
hint_count = 0
hint_limit = 2
out_of_hints = false

puts "--- Welcome to the secret word guessing game! ---"
puts "--- You must answer with the correct word to win ---"
puts "--- *Be warned* ---
            1. You only have 5 chances to win
            2. You may recieve hints by typing 'Hint or 'hint' as a guess"

# Game Section
while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit and guess_count != 4
    puts "Enter guess: "
    guess = gets.chomp()
    guess_count += 1
    # Handles obtaining user input and keeps count of guesses
  elsif guess_count < guess_limit and guess_count == 4
    puts "Final guess:"
    guess = gets.chomp()
    guess_count += 1
  else
    out_of_guesses = true
  end
  if guess == "Hint" or guess == "hint" and hint_count < hint_limit and hint_count < 1
    puts hint[0]
    hint_count += 1
  elsif guess == "Hint" or guess == "hint" and hint_count == 1
    puts hint[1]
    hint_count += 1
  elsif guess == "Hint" or guess == "hint" and hint_count == 2
    out_of_hints = true
    puts hint[2]
  end
  # Handles hint logic and outputs alerts to user based on count of hints
end

if out_of_guesses
  puts "You lose"
else
  puts "You won!"
end
# Handles endgame alerts
