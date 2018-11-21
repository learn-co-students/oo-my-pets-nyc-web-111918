class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = Array.new
  @@count = 0

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all.size.times {|i| @@all.pop }
  end

  def initialize(species)
    @name = name
    @species = species
    @pets= {:cats=>[], :dogs=>[], :fishes=>[]}
    @@count += 1
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |pet_type, pets|
      self.pets[pet_type].each do |pet|
        pet.mood = "nervous"
      end
      self.pets[pet_type] = Array.new
    end
  end

  def list_pets
    return "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
