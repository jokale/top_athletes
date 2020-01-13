class Scraper 
  
  def self.scrape_athletes 
    page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T")) 
    
    
    
    page.css(".slide-title-text").each do |athletes|
      
      binding.pry 
  end 
  
end 
