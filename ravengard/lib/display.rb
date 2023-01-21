module Display
  def display_intro_graphics
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
  end

  def display_intro_name
    puts "----------------"
    puts "Commander: Get up Warrior. Whats your name?"
    puts "----------------"
    sleep 1
    puts "State your name:"
  end

  def display_intro_age(name, age)
    puts "----------------"
    puts "Commander: Great #{name}, nice to meet you. Are you old enough for battle?"
    puts "----------------"
    sleep 1
    puts "State your age: "
  end

  def display_age_check(age)
    loop do
      if age < 18
        puts display_input_warning
        puts "State your age: "
        age = gets.chomp().to_i
      else
        age >= 18
      end
      break if age >= 18
    end
  end

  def display_intro_form
    puts "----------------"
    puts "Commander: Wonderful!"
    sleep 1
    puts "Commander: We have summoned all creatures to help us fight this war. What form do you choose?"
    puts "----------------"
    sleep 1
    puts "State your form: "
  end

  def display_intro_location(form)
    puts "----------------"
    puts "Commander: And where do you hail from great #{form}?"
    puts "----------------"
    sleep 1
    puts "State your home: "
  end

  def display_intro_skill
    puts "----------------"
    puts "Commander: Lastly, before you join my legion, what skills have you for battle?"
    puts "----------------"
    sleep 1
    puts "State your Warrior skill: "
  end

  def display_battle_cry
    puts "----------------"
    sleep 1
    puts "Commander: LETS GO TO BATTLE!"
  end

  def display_identification(level, name, age, form, location, skill)
    sleep 1
    puts " "
    puts "*-*-*-*-*-*"
    puts "Warrior details & stats:"
    puts "Level: #{level}"
    puts "Name: #{name}"
    puts "Age: #{age}"
    puts "Form: #{form}"
    puts "Location: #{location}"
    puts "Skills: #{skill}"
    puts "*-*-*-*-*-*"
    puts " "
  end

  def display_update_id(level, name, age, form, location, skill)
    puts "----------------"
    sleep 1
    puts "State your name:"
    name = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "State your age:"
    age = gets.chomp().to_i
    loop do
      age_check = false
      if age < 18
        puts "Error: Please input age over 18"
      else
        age_check = true
      end
      break if age_check == true
    end
    puts "----------------"
    sleep 1
    puts "State your form:"
    form = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "State your location:"
    location = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "State your skill:"
    skill = gets.chomp().capitalize
    puts "----------------"
    sleep 1
    puts "Saving Complete"
    puts display_identification(level, name, age, form, location, skill)
  end

  def display_level_up
    puts " "
    sleep 1
    puts "*-*-*-*-*-*"
    puts "Level Up"
    puts "*-*-*-*-*-*"
    sleep 1
    puts " "
  end

  def display_input_warning
    "\e[31mSorry, that is an invalid answer. Please, try again.\e[0m"
  end
end
