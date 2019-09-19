class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name = nil)
    @name = name
    @species = "Human"
    @@all << self
  end
end