# require_relative 'intro.rb'

# module ComputerWarrior
#   def 
#   def computer_take_damage
#     @health -= attack
#   end

#   def computer_attack
    
#   end
# end

# class Warrior < Intro
#   include ComputerWarrior
#   attr_accessor :intro, :strength, :health, :attack

#   MAX_HEALTH = 120

#   def initialize(strength, health, attack)
#     @strength = ((strength + (@@age - 10)) * @@level)
#     @health = health
#     @attack = attack
#   end

#   def warrior_attack
#     if @strength >= 200 && @health == MAX_HEALTH
#       @attack - 
      
#     #define logic for player attack
#   end

#   def heal
#     if @@level <= 1
#       @health += 1 unless @health + 1 > MAX_HEALTH
#     elsif @@level == 2
#       @health = [@health + 2, MAX_HEALTH].min
#     elsif @@level >= 3
#       @health = [@health + 3, MAX_HEALTH].min
#     end
#   end 

#   def sleep
#     8.times do 
#       heal unless @health + 1 > MAX_HEALTH
#     end
#   end

#   def take_damage
#     @health -= attack
#   end
# end

# # class CampaginOne < Intro
# #   #include Player
# #   attr_accessor :intro


# # end

# new_warrior = Warrior.new(100, 120)
# new_warrior.take_damage(50)
# new_warrior.heal
# new_warrior.sleep
# new_warrior.take_damage(25)
