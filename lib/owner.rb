require 'pry'
class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name) 
    #binding.pry
    @name = name
    @species = "human"
    @@all << self
  end 
  
  def say_species 
    "I am a human."
  end 

  def self.all 
    @@all
  end 

  def self.count 
  #binding.pry 
   @@all.count()
  end 

  def self.reset_all
    @@all.clear
  end 

  def cats 
    Cat.all.select do |cat|
      cat.owner == self 
    end 
  end 

  def dogs 
    Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 

  def buy_cat(name)
    Cat.new(name, self) 
  end 

  def buy_dog(name)
    Dog.new(name, self) 
  end 

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end 

  def feed_cats
    self.cats.each do |cats|
      cats.mood = "happy"
    end 
  end 

  def sell_pets 
    self.dogs.each do |dogs|
      dogs.mood = "nervous"
      dogs.owner = nil
    end 
    self.cats.each do |cats|
      cats.mood = "nervous"
      cats.owner = nil
    end 
  end 

  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end