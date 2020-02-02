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
 #first_athlete = 
#description = page.css("div.slide-layout.clearfix p")[index].text
#first_description = page.css("div.slide-layout.clearfix p")[0..2].text.strip 
 end 

 #if user input = 1 puts wilma etc.
 #first_athlete = page.css("div.slide-layout.clearfix p")[0..2].text
 # 2billie = page.css("div.slide-layout.clearfix p")[3..5].text
 # 3vonn =  page.css("div.slide-layout.clearfix p")[6..9].text
 # 4raisman  = page.css("div.slide-layout.clearfix p")[10..11].text
 # 5morgan = page.css("div.slide-layout.clearfix p")[12..15].text
 # 6liukin  = page.css("div.slide-layout.clearfix p")[16..18].text
 # 7serena = page.css("div.slide-layout.clearfix p")[19..23].text
# 8 patrick = page.css("div.slide-layout.clearfix p")[24..27].text
#9 rousey = age.css("div.slide-layout.clearfix p")[28..32].text

#10 sharapova = page.css("div.slide-layout.clearfix p")[33..35].text
#11 ledecky = page.css("div.slide-layout.clearfix p")[36..38].text
# 12 simone biles = page.css("div.slide-layout.clearfix p")[39..43].text
#13 franklin = page.css("div.slide-layout.clearfix p")[44..47].text
# 14 Rapinoe =  page.css("div.slide-layout.clearfix p")[48..51].text
#15 graf = page.css("div.slide-layout.clearfix p")[52..56].text
# 16 treanor n jennings = page.css("div.slide-layout.clearfix p")[57..60].text
# 17 taurasi = page.css("div.slide-layout.clearfix p")[61..63].text
#18 latynina = page.css("div.slide-layout.clearfix p")[64..65].text
# 19 joyner kersee = page.css("div.slide-layout.clearfix p")[66..68].text
#20 c parker = page.css("div.slide-layout.clearfix p")[69..72].text
# 21 comaneci = page.css("div.slide-layout.clearfix p")[73..75].text
## 22 Navratilova = page.css("div.slide-layout.clearfix p")[76..80].text
# 23 da silva = page.css("div.slide-layout.clearfix p")[81..82].text
# 24 thompson = page.css("div.slide-layout.clearfix p")[83..85].text
# 25 lieberman = page.css("div.slide-layout.clearfix p")[86..89].text
# 26 hamm = page.css("div.slide-layout.clearfix p")[90..93].text
# 27 wambach =  page.css("div.slide-layout.clearfix p")[94..98].text
# 28  retton = page.css("div.slide-layout.clearfix p")[99..101].text
# 29 kwan = page.css("div.slide-layout.clearfix p")[102..103].text
# 30 venus = page.css("div.slide-layout.clearfix p")[104..107].text
# 31 Moore = page.css("div.slide-layout.clearfix p")[108..110].text
# 32 zaharias = page.css("div.slide-layout.clearfix p")[111..115].text
# 33 swoopes = page.css("div.slide-layout.clearfix p")[116..118].text
#34 miller = page.css("div.slide-layout.clearfix p")[119..122].text
# 35 lopez =page.css("div.slide-layout.clearfix p")[123..125].text
# leslie = page.css("div.slide-layout.clearfix p")[126..127].text

















end


 
 end 

 #what I found to print certain athletes description page.css("div.slide-layout.clearfix p")[3..5].text