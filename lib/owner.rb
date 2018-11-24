require 'pry'

class Owner

  @@all_owners = []

  attr_reader :species
  attr_accessor :name, :pets

  # Class methods
  #   ::all returns all instances of Owner that have been created (FAILED - 16)
  #   ::count returns the number of owners that have been created (FAILED - 17)
  #   ::count can reset the owners that have been created (FAILED - 18)


  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def self.reset_all
    @@all_owners.clear
  end

# Instance methods
  #   #name
  #     can have a name (FAILED - 22)
  #   #pets
  #     is initialized with a pets attribute as a hash with 3 keys (FAILED - 23)
  # def species
  #   #species
  #     initializes with a species (FAILED - 19)
  #     can't change its species (FAILED - 20)

  def initialize(name)
    @name = name
    @species = 'human'
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all_owners << self
  end


  #   #say_species
  #     can say its species (FAILED - 21)

  def say_species
    "I am a #{@species}."
  end

  #   #buy_fish
  #     can buy a fish that is an instance of the Fish class (FAILED - 24)
  #     knows about its fishes (FAILED - 25)
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
    new_fish.owner = self
  end

  #   #buy_cat
  #     can buy a cat that is an instance of the Cat class (FAILED - 26)
  #     knows about its cats (FAILED - 27)

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
    new_cat.owner = self
  end

  #   #buy_dog
  #     can buy a dog that is an instance of the Dog class (FAILED - 28)
  #     knows about its dogs (FAILED - 29)

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
    new_dog.owner = self
  end

  #   #walk_dogs
  #     walks the dogs which makes the dogs' moods happy (FAILED - 30)

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end
  #   #play_with_cats
  #     plays with the cats which makes the cats moods happy (FAILED - 31)

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end
  #   #feed_fish
  #     feeds the fishes which makes the fishes' moods happy (FAILED - 32)
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end
  #   #sell_pets
  #     can sell all its pets, which make them nervous (FAILED - 33)


  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = 'nervous'
      end
    end
    self.pets.each do |species, pets|
      pets.clear
    end
  end

  #   #list_pets
  #     can list off its pets (FAILED - 34)
  def list_pets
    total_pets = self.pets.map do |species, pets|
      pets.count
    end
    "I have #{total_pets[0]} fish, #{total_pets[2]} dog(s), and #{total_pets[1]} cat(s)."
  end


  #

end
#
# binding.pry
