require 'pry'
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @species = species
    @pets = {:cats => [], :dogs => [], :fishes => []}

    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    dog = @pets[:dogs]
    dog.each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    cat = @pets[:cats]
    cat.each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    fish = @pets[:fishes]
    fish.each {|fish| fish.mood = "happy"}

  end

  def sell_pets
    @pets.each do |pet, pet_arr|
      pet_arr.each do |pet_instance|
        #you have to change the instance mood first.
        #you have to change the pet mood first.
        pet_instance.mood = "nervous"
      end
      #then clear the array.
      pet_arr.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end #end of Owner class
