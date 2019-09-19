class Dog
  
  attr_reader :name, :owner
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
end