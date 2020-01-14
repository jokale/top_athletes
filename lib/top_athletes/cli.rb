class CLI 
  def start  
    puts "Hey there and welcome to the most iconic female athletes of the century!"
    puts "Pick a number from 1 to 36 to see which athletes rank"
    Scraper.scrape_athletes
    
    athletes = Athletes.all 
    athletes.each_with_index(1) do |athletes, index| puts "#{index}.#{athletes.name}" 
    end 
  end 
  
end 