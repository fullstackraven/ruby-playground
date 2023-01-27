require_relative 'display.rb'
module Player
  include Display

  def player_intro_prompts
    player_name
    player_age
    player_form
    player_location
    player_skill
  end

  def player_level(level)
    sleep 1
    puts "Your new level: #{level}"
    puts " "
    puts display_level_hint
    puts " "
  end

  def player_name
    display_intro_name
    @@name = gets.chomp().capitalize
  end

  def player_age
    display_intro_age(@@name)
    @@age = gets.chomp().to_i
    display_age_check(@@age)
  end

  def player_form
    display_intro_form
    @@form = gets.chomp().capitalize
  end

  def player_location
    display_intro_location(@@form)
    @@location = gets.chomp().capitalize
  end

  def player_skill
    display_intro_skill
    @@skill = gets.chomp().capitalize
  end

  def player_health
    @health = [@@age * 5, 120].min
  end

  def player_strength
    @strength = [@@age / 2, 10].min
  end

  def player_speak
    dialog = gets.chomp()
  end

  def player_move
    move = gets.chomp()
  end

  def player_action
    action = gets.chiomp()
  end

  def player_attack
    # if @strength >= 200 && @health == MAX_HEALTH
    #   @attack - 
  end

  def player_take_damage
    @health -= attack
  end

  def player_heal
    if @@level <= 1
      @health += 1 unless @health + 1 > MAX_HEALTH
    elsif @@level == 2
      @health = [@health + 2, MAX_HEALTH].min
    elsif @@level >= 3
      @health = [@health + 3, MAX_HEALTH].min
    end
  end 

  def player_sleep
    8.times do 
      heal unless @health + 1 > MAX_HEALTH
    end
  end
end






# class ComputerWarrior
#   include Player
#   attr_accessor :name, :health, :age, :strength, :background

#   MAX_HEALTH = 120

#   NAMES =  ["Arne", "Birger", "Bjørn", "Bo", "Erik", "Frode", "Gorm", "Halfdan", "Harald", "Knud", "Kåre", "Leif", "Njal", "Roar", "Rune", "Sten", "Skarde", "Sune", "Svend", "Troels", "Toke"]

#   BACKGROUND = {
#     "Arne" => "Arne was a fierce warrior who was known for his skill with the eagle-shaped axe. He was said to have been able to control eagles and use them to attack his enemies. He was also known for his courage in battle and his loyalty to his clan.",

#     "Birger" => "Birger was a powerful shield-bearer and a master of defensive tactics. He was known as the 'keeper' of his clan, always standing guard and protecting his comrades. He was also a skilled strategist and his tactical prowess often helped his clan win battles.",

#     "Bjørn" => "Bjørn was a fierce berserker who was said to take on the strength and ferocity of a bear in battle. He was known for his bravery and his ability to inspire fear in his enemies. He was also a respected leader among his clan, and his wisdom and guidance was often sought after by his comrades.",

#     "Bo" => "Bo was a skilled archer and a master of the bow. He was known as 'the resident' of his clan, always staying close to home and protecting his people from invaders. He was also a gifted tracker and his knowledge of the land was often used to the clan's advantage.",

#     "Erik" => "Erik was a powerful warrior and a leader among his clan. He was known as the 'absolute ruler' of his people, always putting their needs before his own. He was also a skilled diplomat, and his ability to negotiate with other clans often helped to keep the peace.",

#     "Frode" => "Frode was a wise and clever warrior. He was known for his ability to outsmart his enemies in battle, using his intelligence and cunning to defeat them. He was also a respected elder among his clan, and his advice was often sought after.",

#     "Gorm" => "Gorm was a devout warrior who was known for his devotion to the gods. He was known as 'he who worships god' and his faith was said to give him strength in battle. He was also a respected leader among his clan and his guidance was often sought after.",

#     "Halfdan" => "Halfdan was a fierce warrior and a leader among his clan. He was known as 'the half Danish' because of his mixed heritage. He was a skilled warrior and his courage and strength in battle was admired by his comrades.",

#     "Harald" => "Harald was a powerful warrior and a leader among his clan. He was known as 'lord and ruler' of his people. He was also a skilled blacksmith and his weapons were said to be almost unbreakable. Harald was known for his leadership and strategic mind. He was a fierce fighter and a natural leader, who inspired his comrades with his courage and determination. He was respected and admired by his comrades, who followed him into battle without hesitation.",

#     "Knud" => "Knud was a skilled warrior who was known for his ability to 'knot' his enemies in battle. He was also a respected leader among his clan and his wisdom and guidance was often sought after. Knud was also known for his strength and endurance. He was a skilled blacksmith and had made his own weapon, a massive battle hammer, which he would wield with ease in battle, crushing his enemies with its weight and power. He was respected by his comrades for his skill in battle and his ability to take on multiple opponents at once. He was also known for his knot-like tattoos, which he believed brought him good luck in battle.",

#     "Kåre" => "Kåre was a fierce and relentless Viking warrior, known for his curly hair and his skill with a sword. He was also a skilled hunter and his knowledge of the land was often used to the clan's advantage. He was also known for his ability to intimidate his enemies with his wild appearance. He was feared by his enemies and respected by his comrades for his ferocity in battle. He was a man of few words but his actions spoke louder than words. A fierce fighter, who would never back down from a challenge and would fight to the death to protect his comrades. He was feared by his enemies and respected by his comrades for his loyalty and bravery. He had a distinctive look with curly hair, which earned him his nickname Kåre, the warrior with curly hair.",

#     "Leif" => "Leif was a descendant of a long line of Viking warriors and seafarers. He was raised on tales of his ancestors' exploits and was determined to make a name for himself in the world. He was a skilled and fearless warrior, known for his courage and determination in battle. He was also a skilled navigator and was able to lead his men on daring raids along the coast of Europe.",

#     "Njal" => "Njal was a giant of a man, towering over his fellow warriors and striking fear into the hearts of his enemies. He was a fierce warrior, known for his strength and prowess in battle. He had a fierce reputation as a berserker, and was feared by all who knew him. He had a giant battle axe, which he was able to wield with ease, and his enemies trembled at the sight of him charging towards them. Despite his fearsome reputation, Njal was also known for his wisdom and fairness.",

#     "Roar" => "Roar was a fearless warrior, known for his bravery in battle and his skill with a spear. He was also known for his loud battle cry, which could be heard over the din of battle and struck fear into the hearts of his enemies. Roar was also known for his cunning and strategic mind, he was able to outmaneuver his enemies and lead his men to victory in many battles.",

#     "Rune" => "Rune was a Viking warrior known for his secrecy and mysterious ways. He was a skilled warrior and a master of runes, the ancient Viking alphabet, which he believed held powerful magic. He would often inscribe runes on his weapons and armor, which he believed gave him an added edge in battle. He was a silent warrior, preferring to let his actions speak louder than his words. His enemies never knew what to expect from him, as he always had a few tricks up his sleeves, earning him the name Rune, the secret warrior.",

#     "Sten" => "Sten was a relentless Viking warrior, known for his strength and endurance. He was a skilled blacksmith and had made his own weapon, a massive battle hammer, which he would wield with ease in battle, crushing his enemies with its weight and power. He was known for his stoic nature, never showing fear or backing down from a challenge. He was a true Viking, who lived for the glory of battle and the thrill of combat, earning him the name Sten, the stone warrior.",

#     "Skarde" => "Skarde was a powerful Viking warrior, known for his cleft chin and his skill with a sword. He was feared by his enemies and respected by his comrades for his ferocity in battle. Skarde was a man of few words but his actions spoke louder than words. He was known to be a fierce fighter, who would never back down from a challenge and would fight to the death to protect his comrades.",

#     "Sune" => "Sune was a young and ambitious Viking warrior, known for his courage and strong sense of loyalty to his comrades. He was the son of a renowned warrior and was determined to make a name for himself in the Viking world. He was a skilled fighter and had a natural talent for battle strategy. Despite his youth, he quickly earned the respect and admiration of his older comrades, who saw in him the potential for greatness. He was always eager to prove himself in battle, earning the nickname Sune, the son of a warrior.",

#     "Svend" => "Svend was a fierce Viking warrior, known for his loyalty and his service to his lord. He was a freeman, who had chosen to serve a powerful lord in exchange for protection and support. He was a fierce fighter, known for his bravery and his ability to lead his men in battle. He was respected by his lord and comrades for his skill and his dedication to their cause. Svend was a true Viking, who lived for the glory of battle, the honor of his lord, and the freedom of his people.",

#     "Troels" => "Troels was a skilled Viking warrior, known for his exceptional archery skills. He was a devout follower of Thor and believed that the god of thunder had blessed him with a powerful aim and deadly accuracy with a bow. He was respected by his comrades for his bravery and his ability to take down multiple enemies with a single arrow. His enemies trembled at the sight of him, as they knew that Troels' arrows were a sure sign of death. He was known as Troels, Thor's arrow, for his deadly accuracy and devotion to the god of thunder.",

#     "Toke" => "Toke was a powerful and skilled magical Viking warrior, known for his exceptional battle prowess and his mastery of ancient Viking magic. He was a fierce fighter and a natural leader, who inspired his comrades with his courage and determination. He was also known for his distinctive helmet, which was enchanted with powerful magic that protected him in battle and enhanced his strength and skill. He was a devout follower of Thor and believed that the god of thunder had blessed him with magical powers. He would always invoke Thor's name and use his magic before going into battle, earning him the nickname Toke, Thor and the enchanted helmet."
#   }

#   def initialize
#     @name = NAMES.sample
#     @age = (rand * 20 + 15).round(1)
#     @health = [@age * 5, 120].min
#     @strength = [@age / 2, 10].min
#     @background = BACKGROUND[@name]
#   end
# end
  

# class Warrior
#   include Display
#   # include Player
#   attr_accessor :strength, :health

#   MAX_HEALTH = 120

#   def initialize
#     @health = [@age * 5, 120].min
#     @strength = [@age / 2, 10].min
#   end
# end

# # player = ComputerWarrior.new
# # puts "Name: #{player.name}"
# # puts "Age: #{player.age}"
# # puts "Health: #{player.health}"
# # puts "Strength: #{player.strength}"
# # puts "Background: #{player.background}"