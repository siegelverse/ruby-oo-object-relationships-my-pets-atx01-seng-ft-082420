class Dog
  attr_accessor :owner, :mood, :dog
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous" 
    @dog = dog 
    @@all << self 
  end 

  def self.all 
    @@all  
  end 
end