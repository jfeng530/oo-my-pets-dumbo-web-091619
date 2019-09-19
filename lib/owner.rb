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
end