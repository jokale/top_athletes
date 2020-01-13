class Scraper 
  
  def self.scrape_athletes 
    page = Nokogiri::HTML(open("http://www.espn.com/espn/feature/story/_/id/26113613/espn-world-fame-100-2019")) 
    
  end 
  
end 