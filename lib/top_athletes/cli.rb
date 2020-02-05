class CLI 
  
  def start  
    puts "Hey there and welcome to the 36 most iconic female athletes of the century as per Business Insider"
    Scraper.scrape_athletes
    menu
  end 
  
  def menu 
    input = ""
    until input == "exit"
    puts ""
    puts "Please select an athlete by number to view the details or enter 'exit' to quit "
    
    athletes = Athletes.all 

    puts ""
    
   
      
    athletes.each.with_index +1 do |athletes, index|
      if index < 37 
        if index == 13
          puts "#{index}. Missy Franklin"
          next
        end
      puts "#{index}. #{athletes.name}" 
      
  end
    
end 
  
    input = gets.strip
      
    if input.to_i.between?(1, Athletes.all.size)
        index = input.to_i - 1
    
   
athletes = Athletes.all[index]
  
        display_details(index+ 1)
      else
        puts "Goodbye, hope you have a great day! Who knows maybe you'll be on this list soon!"
      end
    end
  end

  def display_details(input)
    puts ""
    if input == 1 
      puts first_description = Scraper.scrape_description[0..2].text.strip 
    elsif input == 2
      puts second_description = Scraper.scrape_description[3..5].text.strip 
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 3
      puts third_description = Scraper.scrape_description[6..9].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 4
      puts fourth_description = Scraper.scrape_description[10..11].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 5
      puts fifth_description = Scraper.scrape_description[12..15].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 6
      puts sixth_description = Scraper.scrape_description[16..18].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 7
      puts seventh_description = Scraper.scrape_description[19..23].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 8
      puts eigth_description = Scraper.scrape_description[24..27].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 9
      puts ninth_description =Scraper.scrape_description[28..32].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 10
      puts tenth_description = Scraper.scrape_description[33..35].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 11
      puts eleventh_description = Scraper.scrape_description[36..38].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 12
      puts twelvth_description = Scraper.scrape_description[39..43].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 13
      puts thirteenth_description = Scraper.scrape_description[44..47].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 14
      puts fourteenth_description = Scraper.scrape_description[48..51].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 15
      puts fifteenth_description = Scraper.scrape_description[52..56].text.strip 
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 16
      puts sixteenth_description = Scraper.scrape_description[57..60].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 17
      puts seventeenth_description = Scraper.scrape_description[61..63].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 18
      puts eighteenth_description = Scraper.scrape_description[64..65].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 19
      puts nineteenth_description = Scraper.scrape_description[66..68].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 20
      puts twentieth_description = Scraper.scrape_description[69..72].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 21
      puts twenty_first_description = Scraper.scrape_description[73..75].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 22
      puts twenty_second_description = Scraper.scrape_description[76..80].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 23
      puts  twenty_third_description = Scraper.scrape_description[81..82].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 24
      puts twenty_fourth_description = Scraper.scrape_description[83..85].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 25
      puts twenty_fifth_description = Scraper.scrape_description[86..89].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 26
      puts twenty_sixth_description = Scraper.scrape_description[90..93].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 27
      puts twenty_seventh_description = Scraper.scrape_description[94..98].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 28
      puts  twenty_eigth_description = Scraper.scrape_description[99..101].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 29
      puts twenty_ninth_description = Scraper.scrape_description[102..103].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 30
      puts thirtieth_description = Scraper.scrape_description[104..107].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 31
      puts  thirty_one_description = Scraper.scrape_description[108..110].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 32
      puts thirty_two_description = Scraper.scrape_description[111..115].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 33
      puts thirty_three_description = Scraper.scrape_description[116..118].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 34
      puts thirty_four_description = Scraper.scrape_description[119..122].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 35
      puts thirty_five_description = Scraper.scrape_description[123..125].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    elsif input == 36
      puts thirty_sixth_description = Scraper.scrape_description[126..127].text.strip
      puts ""
      puts "Would you like to find out more about another athlete?"
    else 
      puts "" 
    end 
  end     




end 
    