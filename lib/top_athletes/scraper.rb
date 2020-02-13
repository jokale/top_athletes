class Scraper 
  ATHLETE_RANGES = [(0..2), (3..5), (6..9),(10..11),(12..15),(16..18),(19..23),(24..27),(28..32),(33..35),(36..38),(39..43),(44..47),(48..51),(52..56), (57..60),(61..63),(64..65),(66..68),(69..72),(73..75),(76..80),(81..82),(83..85),(86..89),(90..93),(94..98),(99..101),(102..103),(104..107),(108..110),(111..115),(116..118),(119..122),(123..125),(126..127)]
  
  def initialize
    @page = Nokogiri::HTML(open("https://www.businessinsider.com/iconic-female-athletes-women-sports-2019-7?r=US&IR=T"))
    scrape_athletes
    scrape_descriptions
  end 

  def scrape_athletes 
    @page.css(".slide-title-text").each.with_index  do  |top_athlete, index|
      name = @page.css(".slide-title-text")[index].text
  
      athlete = Athletes.new(name)
    end 
    Athletes.all.pop 
  end 

  def scrape_descriptions 
   
    Athletes.all.each_with_index do |athlete, index |
      athlete.description= @page.css("div.slide-layout.clearfix p")[ATHLETE_RANGES[index]].text.strip
    end
  

  end  
end 


