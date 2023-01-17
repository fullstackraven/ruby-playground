# Welcome! You have entered into Ravengard! A simple but fun take on a scripted prompt and answer battle game
# Do you have what it takes to win the great war?
# Only the strong will prevail. Good luck!

class Intro
  # include Player
  attr_accessor :name, :age, :form, :location, :skill, :level

  @@name = " "
  @@age = " "
  @@form = " "
  @@location = " "
  @@skill = " "
  @@level = 1


  def intro
    puts " "
    puts "                           *-*-*-*-*-*"
    sleep 0.5
    puts "                            Ravengard"
    sleep 0.5
    puts "                           *-*-*-*-*-*"
    sleep 0.5
    puts " "
    puts "                               ___"
    puts "                              |   |"
    puts "                               ---"
    puts "                               | |"
    puts "                               | |"
    puts "                               | |"
    puts "                         (@)==========(@)"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts "                              | | |"
    puts '                              \ | /'
    puts '                               \|/'
    sleep 1
    puts " "
    puts "You have just been woken by a Ravengard battle commander.\nLegions of armed men and creatures alike are\ngathering in formations around an open field.\nIt's cold. Fresh snow has blanketed you as you slept.\nYou are not sure where you are or how you got here...\n..but it's clear a great battle is beginning..."
    sleep 1
    puts " "
    puts "Commander: " + "Get up Warrior. Whats your name?"
    puts "----------------"
    sleep 1
    puts "State your name:"
    @@name = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "Commander: " + "Great #{@@name}, nice to meet you. Are you old enough for battle?"
    puts "----------------"
    sleep 1
    puts "State your age: "
    @@age = gets.chomp().to_i
    puts "----------------"
    sleep 1
    if @@age >= 18
      puts "Commander: " + "Wonderful!"
      sleep 1
      puts "Commander: " + "We have summoned all creatures to help us fight this war. What form do you choose?"
      puts "----------------"
      sleep 1
      puts "State your form: "
      @@form = gets.chomp().capitalize
      puts "----------------"
      sleep 1
      puts "Commander: " + "And where do you hail from great #{@@form}?"
      puts "----------------"
      sleep 1
      puts "State your home: "
      @@location = gets.chomp().capitalize
      puts "----------------"
      sleep 1
      puts "Commander: " + "Lastly, before you join my legion, what skills have you for battle?"
      puts "----------------"
      sleep 1
      puts "State your Warrior skill: "
      @@skill = gets.chomp().capitalize
      puts "----------------"
      sleep 1
      puts "Commander: " + "LETS GO TO BATTLE!"
      puts " "
    else
      puts "Commander: " + "Children are required to shelter. Leave now!"
      abort
    end
  end

  def update_id
    puts "----------------"
    sleep 1
    puts "State your name:"
    @@name = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "State your age:"
    @@age = gets.chomp().to_i
    loop do
      age = false
      if @@age < 18
        puts "Error: Please input age over 18"
      else
        age = true
      end
      break if age == true
    end
    puts "----------------"
    sleep 1
    puts "State your form:"
    @@form = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "State your location:"
    @@location = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "State your skill:"
    @@skill = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "Saving Complete"
  end

  def update
    puts "Would you like to change any personal stats or information before moving on? You will not be able to edit after this point."
    options = "(a) Yes\n(b) No"
    puts options
    puts " "
    puts "----------------"
    sleep 1
    puts "State your choice:"
    edit = gets.chomp().downcase
    if edit == 'b'
      puts "----------------"
      puts "Saving complete"
    elsif edit == 'a'
      update_id
    end
  end

  def identification
    sleep 1
    puts " "
    puts "*-*-*-*-*-*"
    puts "Warrior details & stats:"
    puts "Level: #{@@level}"
    puts "Name: #{@@name}"
    puts "Age: #{@@age}"
    puts "Form: #{@@form}"
    puts "Location: #{@@location}"
    puts "Skills: #{@@skill}"
    puts "*-*-*-*-*-*"
    puts " "
  end

  def decision_error
    puts "Error: You must choose one of the options given."
  end

  def decision1
    loop do
      puts " "
      sleep 1
      puts "Begin training for battle or join your legion platoon: "
      decision1 = "(a) Hone my skills\n(b) No practice. I'm ready for battle!"
      puts decision1
      # run_campagin = false
      puts " "
      puts "----------------"
      sleep 1
      puts "State your choice:"
      run_campagin = gets.chomp().downcase.to_s
      puts "----------------"

      if run_campagin == 'a'
        puts " "
        sleep 1
        puts "#{@@name}, a wise choice! Your training has leveled you up."
        @@level += 1
        puts " "
        sleep 1
        puts "*-*-*-*-*-*"
        puts "Level Up"
        puts "*-*-*-*-*-*"
        sleep 1
        puts " "
        my_warrior = Intro.new
        puts my_warrior.identification
        run_campagin = true
      elsif run_campagin == 'b'
        puts " "
        puts "#{@@name}, all #{@@form}'s must be born ready. Your platoon is across the field. Collect your weapon and meet up with the platoon leader."
        puts " "
        run_campagin = true
      else
        decision_error
      end
      break if run_campagin == true
    end
  end
end
