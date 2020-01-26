class Scraper 


def self.scrape_athletes 
  page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
  page.css(".slide-title-text").each.with_index  do  |top_athlete, index|
  name = page.css(".slide-title-text")[index].text
  
  athlete = Athletes.new(name)
   end 
 end 

def self.scrape_description 
 page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
 page.css("div.slide-layout.clearfix p").each.with_index do |description, index|
    description = page.css("div.slide-layout.clearfix p")[index].text
 end 
 
end


 
 end 
