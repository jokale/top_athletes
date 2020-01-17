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
    puts ""
    puts "Please select an athlete by number to view the details or enter 'exit' to quit "
    
    athletes = Athletes.all 
    
    puts ""
    
   
      
    athletes.each.with_index +1 do |athletes, index|
      if index < 37 
      puts "#{index}. #{athletes.name}" 
      
  
  end 
end 
  
    input = gets.strip
      
    if input.to_i.between?(1, Athletes.all.size)
        index = input.to_i - 1
    
   
athletes = Athletes.all[index]
  
        display_details(athletes)
      else
        puts "Goodbye, hope you have a great day! Who knows maybe you'll be on this list soon!"
      end
    end
  end

  def display_details(athletes)
    puts ""
    description = Scraper.scrape_description.text.strip 
    
    
        
     puts  "Athlete description: #{description}"
     puts ""
     
    puts "Would you like to find out more about another athlete?"
    
  
  end 


end 
    