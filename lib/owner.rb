require "pry"
class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    new_pet = Fish.new(name)
    self.pets[:fishes] << new_pet
  end

  def buy_cat(name)
    new_pet = Cat.new(name)
    self.pets[:cats] << new_pet
  end

  def buy_dog(name)
    new_pet = Dog.new(name)
    self.pets[:dogs] << new_pet
  end

  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood ="happy"}
  end

  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood ="happy"}
  end

  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |key, pets|
      pets.each { |pet| pet.mood = "nervous" }
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    # binding.pry
  end

end
