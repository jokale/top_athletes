class Scraper 
  
  def self.scrape_athletes 
    page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T")) 
    
    binding.pry 
    
    page.css(".slide-title-text").each do |athletes|
      
  end 
  
end 
<h2 class="slide-title-text">Billie Jean King</h2>