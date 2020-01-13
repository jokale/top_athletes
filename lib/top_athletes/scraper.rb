class Scraper 
  
  def self.scrape_athletes 
    page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T")
   
   page.css(".slide-title-text").each_with_index do |top_athlete ,  index|
     
     
  title = page.css(".slide-title-text")[index].text
  
athlete = Athlete.new(title)
   
binding.pry 

 end 
 end 
end 
