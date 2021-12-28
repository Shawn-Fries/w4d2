# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]
class FruitError < StandardError

end

class CoffeeError < StandardError

end

def reaction(maybe_fruit)
  
  needs_coffee = false
  if FRUITS.include? maybe_fruit && !needs_coffee
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    needs_coffee = false
    raise FruitError 
  else
    raise CoffeeError
    # raise StandardError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  
  begin
    reaction(maybe_fruit) 
  rescue FruitError
    puts "Sorry, not a fruit"
    feed_me_a_fruit
  rescue CoffeeError
    needs_coffee = true
    puts "give me coffee!"
    feed_me_a_fruit
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


