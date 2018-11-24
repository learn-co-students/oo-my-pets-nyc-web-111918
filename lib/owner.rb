require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a human."
  end


  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.map do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.each do |type, pets|
      pets.clear
    end
  end

  def list_pets
    fishes = pets[:fishes]
    dogs = pets[:dogs]
    cats = pets[:cats]
    "I have #{fishes.length} fish, #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end

end
