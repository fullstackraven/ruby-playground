#This is a calculator app that I built for myself as practice
#in sharpening my Ruby programming skills and knowledge

#Handles calculator varibles
num1 = 0
num2 = 0
op = ""

#Handles initialization of Calcu-tron and begins calculation mode with prompt
puts "----------------------------------"
puts "Calcu-tron 2000 says hello"
puts "Would you like to use my calculation functionality? Type 'Yes'"

#Handles collection of inputs and computation of numbers according to operator
def calc()
  puts "Welcome! Please input first number:"
  num1 = gets.chomp().to_f
  puts "Please enter operator: [Add: + , Subtract: - , Divide: / , Multiply: * , Exponent: **]"
  op = gets.chomp()
  puts "Please input second number:"
  num2 = gets.chomp().to_f
  puts "Please wait for calculation to complete"
  puts "----------------------------------"

  if op == "+"
    puts num1 + num2
  elsif op == "-"
    puts num1 - num2
  elsif op == "/"
    puts num1 / num2
  elsif op == "*"
    puts num1 * num2
  elsif op == "**"
    puts num1 ** num2
  end
end

#Handles initialization of 'calc' method and takes action on user input
enter = gets.chomp().upcase
if enter == 'YES'
  calc
elsif enter != 'YES'
  puts "Calcu-tron says goodbye!"
end

#Handles ability of Calcu-tron to continue with new calculations or to end 
while enter == 'YES'
  puts "----------------------------------"
  puts "Type 'New' to start new calculation or 'Esc' to leave Calcu-Tron"
  new_calc = gets.chomp().upcase
  if new_calc == 'NEW'
    calc
  elsif new_calc == 'ESC'
    puts "Calcu-tron says goodbye!"
    enter = new_calc
  end
end

