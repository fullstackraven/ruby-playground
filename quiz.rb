# This is a playground project that I created myself based
# on the freeCodeCamp Ruby tutorial 'Building a Quiz' section
# I used this as practice with classes and initializing methods

class Question
  attr_accessor :prompt, :answer

  # Handles attributes for what each question will contain

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
  # Handles associating each attribute to the passed value
end

# Handles varibles that contain the questions and answers
p1 = "The average person does what thirteen times a day?\n(a) Farts\n(b) Laughs\n(c) Yawns"
p2 = "The Average American does what 22 times a day?\n(a) Cusses\n(b) Touches a door handle\n(c) Opens the fridge"
p3 = "In California you can't legally buy a mousetrap without having what?\n(a) A Hunting license\n(b) Cheese\n(c) A mouse problem"
p4 = "On Sunday in Florida it is illegal for a single woman to do what?\n(a) Drive alone\n(b) Skydive\n(c) Speak to a married man"
p5 = "Coprastastaphobia is the fear of what?\n(a) High winds\n(b) Copper pipes\n(c) Constipation"

# Handles array that calls the class and initialize method and passes the correct answer
questions = [
  Question.new(p1, "b"),
  Question.new(p2, "c"),
  Question.new(p3, "a"),
  Question.new(p4, "b"),
  Question.new(p5, "c")
]

# Handles test functionality
def run_test(questions)
  answer = ""
  score = 0
  passed = 3
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    # Handles prompting the question and obtaining user input for the answer
    if answer == question.answer
      score += 1
      # Handles incrementing the test takers score based on correct answers
    end
  end

  puts ("Your final score is " + score.to_s + "/" + questions.length().to_s)

  # Handles end of quiz result & prompt if failed - runs test again if input is given
  if score >= passed
    puts "You passed!!"
  else
    puts "You failed!!"
    puts "To try again type: 'I suck'"
    try_again = gets.chomp().downcase
    if try_again == 'i suck'
      run_test(questions)
    end
  end
end

run_test(questions)
