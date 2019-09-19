class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name = nil)
    @name = name
    @species = "human"
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
    puts "I am a human."
  end
  
  def cats 
    Cats.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs 
    Dogs.all.select do |dog|
      dog.owner == self
    end 
  end 
  
  def buy_cat(name)
    Cats.new(name, self)
  end 
  
  def buy_dog(name)
    Dogs.new(name, self)
  end
  
  def walk_dogs 
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end 
  
  def sell_pets
    self.cats.each do |cat|
      cat.owner = nil 
    end
    self.dogs.each do |dog|
      dog.owner = nil
    end 
  end
  
  def list_pets
    all_pets = []
    self.cats.each do |cat|
      all_pets << cat
    end 
    self.dogs.each do |dog|
      all_pets << dog 
    end
    all_pets 
  end
  
end