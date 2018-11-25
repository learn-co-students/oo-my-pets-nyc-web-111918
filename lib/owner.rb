class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize (species)

    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def Owner.all
    @@all
  end

  def Owner.count
    @@all.count
  end

  def Owner.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish (name)
    new_fish = Fish.new(name)
    self.pets[:fishes].push(new_fish)
  end

  def buy_cat (name)
    new_cat = Cat.new(name)
    self.pets[:cats].push(new_cat)
  end

  def buy_dog (name)
    new_dog = Dog.new(name)
    self.pets[:dogs].push(new_dog)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |animal_key, animals_list|
      animals_list.each do |animal|
        animal.mood = 'nervous'
      end
    end
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    cat_count = self.pets[:cats].count
    dog_count = self.pets[:dogs].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


end
