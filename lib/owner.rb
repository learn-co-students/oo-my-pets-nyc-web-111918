class Owner
    attr_accessor :name, :pets
    attr_reader :species

    @@all = []
    def initialize(species)
      @species = species
      @name = nil
      @pets = {:fishes => [], :dogs => [], :cats => []}
      @@all << self
    end

    def self.all
      @@all
    end

    def self.count
      @@all.length
    end

    def self.reset_all
      @@all = []
    end

    def say_species
      "I am a #{@species}."
    end

    def buy_fish(name)
      Fish.new(name)
      @pets[:fishes] << Fish.all.last
    end

    def buy_cat(name)
      Cat.new(name)
      @pets[:cats] << Cat.all.last
    end

    def buy_dog(name)
      Dog.new(name)
      @pets[:dogs] << Dog.all.last
    end

    def walk_dogs
      @pets[:dogs].last.mood = "happy"
    end

    def play_with_cats
      @pets[:cats].last.mood = "happy"
    end

    def feed_fish
      @pets[:fishes].last.mood = "happy"
    end

    def sell_pets
      @pets.each do |pet, instances|
        instances.each { |instance| instance.mood = "nervous" }
      end
      @pets = []
    end

    def list_pets
      fish_count = @pets[:fishes].length
      dog_count = @pets[:dogs].length
      cat_count = @pets[:cats].length
      "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
      # i_have = "I have"
      # q = @pets.size
      # i = 0
      # @pets.each do |pet, instances|
      #   instances.count}"
      #   i_have += " #{pet.to_s[0..-2]}"
      #   i += 1
      #   if i == 1
      #     i_have << ","
      #   elsif i == q
      #     i_have << "(s)."
      #   else
      #     i_have << "(s),"
      #   end
    # end
    # i_have
  end

end
