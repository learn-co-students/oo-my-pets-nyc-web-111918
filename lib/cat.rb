require 'pry'
class Cat
  attr_reader :name
  attr_accessor :mood
  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end

  # def mood=(mood)
  #   self.mood = mood
  # end
end # end of Cat class
