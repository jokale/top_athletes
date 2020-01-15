class CLI 
  def start  
    puts "Hey there and welcome to the 36 most iconic female athletes of the century!"
    puts "Pick an athelete to see more details about the athlete"
    Scraper.scrape_athletes
    
    athletes = Athletes.all 
    athletes.each.with_index(1) do |athletes, index| puts "#{index}.#{athletes.name}" 

    end 
  end 
end 