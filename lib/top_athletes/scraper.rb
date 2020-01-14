class Scraper 
  
  def self.scrape_athletes 
    page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
   
   page.css(".slide-title-text").each_with_index  do  |top_athlete, index|
     name = page.css(".slide-title-text")[index].text
     
     athlete = Athletes.new(name)
   
 
end 

 end 
end 
