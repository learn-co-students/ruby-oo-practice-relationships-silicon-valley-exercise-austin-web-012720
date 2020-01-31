require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# This creates new Startups
twitter = Startup.new("Twitter", "Jack D", "Social Media")
youtube = Startup.new("YouTube", "Chad H", "Videos")
tiktok = Startup.new("Tik-Tok", "Chinesse Government", "Videos")
apple = Startup.new("Apple", "Steve")

# This creates new Venture Capitalists
mark = VentureCapitalist.new("Mark Cuban", 10000000000)
fish = VentureCapitalist.new("fish", 450000)
shark = VentureCapitalist.new("shark", 999999999999)
minnow = VentureCapitalist.new("minnow", 420)
reese = VentureCapitalist.new("Reese Bowman", 4206900000000)







#binding.pry
0 #leave this here to ensure binding.pry isn't the last line