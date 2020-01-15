class CLI 
  def start  
    puts "Hey there and welcome to the 36 most iconic female athletes of the century"
    puts "Below you'll see a list of top athletes as per Business Insider"
    puts ""
    puts "Want to know more about a specific athlete on the list?"
    puts ""
    puts "Pick any number from 1-36 to see a short summary of the athlete"
    puts ""
    Scraper.scrape_athletes
    
    athletes = Athletes.all 
    athletes.each.with_index(1) do |athletes, index| puts "#{index}.#{athletes.name}" 
    
    
    #I want the user to be able to pick the index number or even name of athlete then they are able to get information sbout the information
    # I also want to create a range if possible to print only number 1 - 36 and if possible have a url for the most paid athletes 
    
puts ""

# # if user_input == 1...36 
# #   puts 

# Scraper.scrape_description

# athletes = Athletes.all 
# athletes.each.with_index(1) do |athlete, index, description| puts "#{index}.#{athletes.name} #{athletes.description
# }"
#     end 
  end 
end 
end 