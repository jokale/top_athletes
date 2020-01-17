require "pry"

class CLI 
  
  def start  
    puts "Hey there and welcome to the 36 most iconic female athletes of the century as per Business Insider"
    Scraper.scrape_athletes
    menu
    Scraper.scrape_description
  end 
  
  def menu 
    input = ""
    until input == "exit"
    puts "Please select an athlete by number to view the details or enter 'exit' to quit "
    
    athletes = Athletes.all 
    
    athletes.each.with_index +1 do |athletes, index|
      if index < 37 
      puts "#{index}. #{athletes.name}" 
  
  end 
end 
  
    input = gets.strip
      
    if input.to_i.between?(1, Athletes.all.size)
        index = input.to_i - 1
    
   
athletes = Athletes.all[index]
        # Scraper.scrape_description
        display_details(athletes)
      else
        puts "Goodbye, hope you have a great day! Who knows maybe you'll be on this list soon!"
      end
    end
  end

#####33
  def display_details(athletes)
    puts ""
    description = Scraper.scrape_description
   
     puts  " #{description}"
     
    puts "Would you like to find out more about another athlete?"
    
    binding.pry 
  end 


end 
    