class GreenMichelin::Restaurant
  attr_accessor :name
   
  def self.today
  self.scrape_restaurants
  end


  def self.scrape_restaurants   
   restaurants = []
  
   restaurants << self.scrape_film
   restaurants << self.scrape_music
   restaurants << self.scrape_sports

  restaurants
  end 

  def self.scrape_film
   doc = Nokogiri::HTML(open("https://www.onthisday.com/film-tv/events.php"))
   
  
   restaurant = doc.search("li.event").first.text
   
   restaurant
   
   end 
   
   def self.scrape_music
    
     doc = Nokogiri::HTML(open("https://www.onthisday.com/music/events.php"))
 
     restaurant = doc.search("li.event").first.text
     
     restaurant
    end
    
  def self.scrape_sports
     doc = Nokogiri::HTML(open("https://www.onthisday.com/sport/events.php"))
  
     restaurant = doc.search("li.event").first.text
     
     restaurant
    end
   
 end 