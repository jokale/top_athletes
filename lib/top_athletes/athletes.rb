require 'pry'
class Athletes 
  @@all = []
  attr_accessor :name, :description
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
 def self.all 
   @@all 
  end 
  
  def self.say_name 
     Athletes.all.collect {|athlete| athlete.name}
  end 


end 



 



