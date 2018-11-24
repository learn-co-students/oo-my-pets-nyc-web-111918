class Dog
  # code goes here
  # Dog
  # can initialize a dog (FAILED - 6)
  # initializes with a name (FAILED - 7)
  # can't change its name (FAILED - 8)
  # initializes with a nervous mood (FAILED - 9)
  # can change its mood (FAILED - 10)

  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

end
