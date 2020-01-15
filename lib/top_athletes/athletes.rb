class Athletes 
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name 
    # @description = description
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 