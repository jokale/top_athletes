class CLI 
  def start  
    puts "Hey there and welcome to the 36 most iconic female athletes of the century!"
    puts "Pick an athelete to see more details"
    Scraper.scrape_athletes
    
    athletes = Athletes.all 
    athletes.each_with_index do |athletes, index| puts "#{index}.#{athletes.name}" 
    end 
  end 
end 