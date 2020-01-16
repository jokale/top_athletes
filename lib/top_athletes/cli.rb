require "pry"

class CLI 
  def start  
    puts "Hey there and welcome to the 36 most iconic female athletes of the century as per Business Insider"
    Scraper.scrape_athletes
    menu
  end 
  
  def menu 
    input = ""
    until input == "exit"
    puts "Please select an athlete by number to view the details or enter 'exit' to quit: "
    
    athletes = Athletes.all 
    
    athletes.each do |athletes|
      
    puts "#{athletes.name}" 
    #the 3 lines of code above puts the athlete names with their index number 
       # if input == "13" 
      #   puts "Sorry no top 13th athlete of the century as there are two athletes at number 16!"

  end 
  
    input = gets.strip
      
    if input.to_i.between?(1, Athletes.all.size)
        index = input.to_i - 1
    
    #!= {athletes.name} 
      
    #   puts "Sorry this athlete is not on the list please type another name"
      
     
        
   
athletes = Athletes.all[index]
        Scraper.scrape_athletes
        display_details(athletes)
      else
        puts "Goodbye, hope you have a great day!"
      end
    end
  end

  def display_details(athletes)
    puts ""
    puts "description: #{athletes.description}"

  end

end
    
    
    #I want the user to be able to pick the index number or even name of athlete then they are able to get information sbout the information
    # I also want to create a range if possible to print only number 1 - 36 and if possible have a url for the most paid athletes 
    

# # if user_input == 1...36 
# #   puts 

# Scraper.scrape_description

# athletes = Athletes.all 
# athletes.each.with_index(1) do |athlete, index, description| puts "#{index}.#{athletes.name} #{athletes.description
# }"
#     end 


 
