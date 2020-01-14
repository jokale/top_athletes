class CLI 
  def start  
    puts "Hey there and welcome to the most iconic female athletes of the century!"
    puts "Pick a number from 1 to 36 to see which athletes rank"
    Scraper.scrape_athletes
    
    athletes = Athletes.all 
    athletes.each do |athletes| 
      puts "#{athletes.title}" 
  end 
  
end 