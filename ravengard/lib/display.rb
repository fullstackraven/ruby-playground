module Display
  # For intro only
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
    puts "Commander: Get up Warrior. Whats your name?"
    puts "----------------"
    sleep 1
    puts "State your name:"
  end

  def display_intro_age(name)
    puts "----------------"
    puts "Commander: Great #{name}, nice to meet you. Are you old enough for battle?"
    puts "----------------"
    sleep 1
    puts "State your age: "
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

  def display_state_info(string)
    puts "----------------"
    sleep 1
    puts "State your #{string}:"
  end

  def display_update_id(level, name, age, form, location, skill)
    display_state_info("name")
    name = gets.chomp().capitalize
    display_state_info("age")
    age = gets.chomp().to_i
    display_age_check
    display_state_info("form")
    form = gets.chomp().capitalize
    display_state_info("location")
    location = gets.chomp().capitalize
    display_state_info("skill")
    skill = gets.chomp().capitalize
    display_identification(level, name, age, form, location, skill)
  end

  def display_update(level, name, age, form, location, skill)
    puts " "
    puts "Would you like to change any personal stats or information before moving on? You will not be able to edit after this point.\n(a) Yes\n(b) No"
    display_choice
    edit = gets.chomp().downcase
    if edit == 'b'
      display_save
      display_identification(level, name, age, form, location, skill)
    elsif edit == 'a'
      display_update_id(level, name, age, form, location, skill)
    end
  end

  def display_train_or_join(name, form, level)
    loop do
      puts " "
      sleep 1
      puts "Begin training for battle or join your legion platoon: "
      puts "(a) Hone my skills\n(b) No practice. I'm ready for battle!"
      puts " "
      display_choice
      run_campaign = gets.chomp().downcase.to_s
      puts "----------------"

      if run_campaign == 'a'
        puts " "
        sleep 1
        puts "#{name}, a wise choice! Your training has leveled you up."
        level += 1
        display_level_up
        player_level(level)
        run_campaign = true
      elsif run_campaign == 'b'
        puts " "
        puts "#{name}, all #{form}'s must be born ready. Your platoon is across the field. Collect your weapon and meet up with the platoon leader."
        puts " "
        run_campaign = true
      else
        puts display_input_warning
      end
      break if run_campaign == true
    end
  end

  # Globally used methods
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

  def display_battle_cry
    puts "----------------"
    sleep 1
    puts "LETS GO TO BATTLE!"
  end

  def display_identification(level, name, age, form, location, skill)
    sleep 1
    puts " "
    puts "*-*-*-*-*-*"
    puts "Warrior details & stats:"
    puts " "
    puts "Level: #{level}"
    puts "Name: #{name}"
    puts "Age: #{age}"
    puts "Form: #{form}"
    puts "Location: #{location}"
    puts "Skills: #{skill}"
    puts "Health: #{player_health}"
    puts "Strength: #{player_strength}"
    puts "*-*-*-*-*-*"
    puts " "
  end

  def display_save
    puts "----------------"
    sleep 1
    puts "Saving Complete"
  end

  def display_choice
    puts "----------------"
    sleep 1
    puts "State your choice:"
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

  def display_level_hint
    sleep 1
    puts "** Leveling up increases your warriors ability to inflict damage and heal **"
  end

  def display_input_warning
    "\e[31mSorry, that is an invalid answer. Please, try again.\e[0m"
  end

  # For end of game only
  def display_replay_game
    puts "Would you like to play a new game?\n(a) Yes\n(b) No"
  
    puts "----------------"
    sleep 1
    puts "State your choice:"
    replay_input = gets.chomp.downcase
    if replay_input == 'a'
      play_game
    else
      puts " "
      puts "Thanks for playing Ravengard!"
    end
  end
end
