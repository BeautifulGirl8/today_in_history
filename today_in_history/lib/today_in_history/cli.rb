class Todayinhistory::CLI
  
 def call
  puts Paint['WELCOME TO "TODAY IN HISTORY"! 
The Date Today is:', :red]
  puts Date.today.strftime("%a, %e %b %Y")
  
  list_events
  get_user_event
  goodbye
 end
 
 def list_events
  @events = Todayinhistory::Event.today
  @events.each.with_index(1) do |event, i|  
    #puts "#{i}.#{event}"
    end
    end
   
   def puts_list_restaurants
  @events = Todayinhistory::Event.today
  @events.each.with_index(1) do |event, i|  
    puts "#{i}.#{event}"
    end
    end

  def get_user_event
  
    input = nil
    while input != "exit"
    puts Paint['Enter a Number to See a Historical Event that Happened Today.', :green]  
    puts Paint['1.Art 2.Film 3.Sport', :yellow]
    puts Paint['Or type all, or type exit', :blue]
    input = gets.strip.downcase
    
    if input.to_i > 0  
      the_event = @events[input.to_i-1]
        puts "#{the_event}"
    elsif input == "all"
      puts_list_events
    else 
      puts Paint['Not sure what you mean. Type list or exit.', :blue]
    end   
 end 
 end
   
  
  def goodbye
    puts Paint['Goodbye.', :red]
  end
end 
