class Cat
  attr_accessor :owner, :mood, :cat
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous" 
    @cat = cat 
    @@all << self 
  end 

  def self.all 
    @@all  
  end 
end