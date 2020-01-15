class Scraper 
  
  def self.scrape_athletes 
    page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
   
   page.css(".slide-title-text").each_with_index  do  |top_athlete, index|
     name = page.css(".slide-title-text")[index].text
    
     athlete = Athletes.new(name)
   

 
end 

def self.athlete_description 
  
   page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
  
 # athlete paragraphs wilma page.css("div.slide-layout.clearfix p")[0].text
end 

 end 
end 
