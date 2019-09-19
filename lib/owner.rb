class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name = nil)
    @name = name
    @species = "Human"
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
  
  def buy_cat
    Cats.new()
  end 
  
  
  
end