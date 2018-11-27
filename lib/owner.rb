class Owner
attr_accessor :pets, :name
attr_reader :species 

@@all = []
def initialize(name)
@name = name
@species = 'human'
@pets = {fishes: [], cats: [], dogs: []}
@@all << self
end

def self.all
@@all
end

def self.count
@@all.length
end

def self.reset_all
	@@all.clear
end

def say_species
return "I am a human."
end

def buy_fish(name)
fish = Fish.new(name)
if @pets[:fishes] != nil
      @pets[:fishes] << fish
    else
      @pets[:fishes] = fish
  end
end

def buy_cat(name)
cat = Cat.new(name)
if @pets[:cats] != nil
      @pets[:cats] << cat
    else
      @pets[:cats] = cat
  end
end

def buy_dog(name)
	dog = Dog.new(name)
if @pets[:dogs] != nil
      @pets[:dogs] << dog
    else
      @pets[:dogs] = dog
  end
end

def walk_dogs
@pets.each do |pet_type, pet_array|
  pet_array.each do |pet_instance|
  if pet_type == :dogs
    pet_instance.mood = "happy"
   end
   end 
   end
end

def play_with_cats
	@pets.each do |pet_type, pet_array|
  pet_array.each do |pet_instance|
  if pet_type == :cats
    pet_instance.mood = "happy"
   end
   end 
   end
end

def feed_fish
@pets.each do |pet_type, pet_array|
  pet_array.each do |pet_instance|
  if pet_type == :fishes
    pet_instance.mood = "happy"
   end
   end 
   end
end

def sell_pets

	@pets.each do |pet_type, pet_array|
  pet_array.each do |pet_instance|
    pet_instance.mood = "nervous"
  end
  end
	@pets[:dogs] = []
	@pets[:cats] = []
	@pets[:fishes] = []
end

def list_pets

dogs = @pets[:dogs].length
cats = @pets[:cats].length
fishes = @pets[:fishes].length 

return "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."

end

end#end of class