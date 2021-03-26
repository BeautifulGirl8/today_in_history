class Todayinhistory::Event
  attr_accessor :name
   
  def self.today
  self.scrape_events
  end


  def self.scrape_events  
   events = []
  
   events << self.scrape_film
   events << self.scrape_music
   events << self.scrape_sports

  events
  end 

  def self.scrape_film
   doc = Nokogiri::HTML(open("https://www.onthisday.com/film-tv/events.php"))
   
  
   event = doc.search("li.event").first.text
   
   event
   
   end 
   
   def self.scrape_music
    
     doc = Nokogiri::HTML(open("https://www.onthisday.com/music/events.php"))
 
     event = doc.search("li.event").first.text
     
     event
    end
    
  def self.scrape_sports
     doc = Nokogiri::HTML(open("https://www.onthisday.com/sport/events.php"))
  
     event = doc.search("li.event").first.text
     
     event
    end
   
 end 