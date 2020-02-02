require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("WeWork", "Avi", "make things")
startup2 = Startup.new("HULL Studios", "James", "sell things")
startup3 = Startup.new("Apple", "Stevie", "make things")
startup4 = Startup.new("Happy Co", "James", "break old things")

vc1 = VC.new("The Dude", -1024)
vc2 = VC.new("Frodo", 10340)
vc3 = VC.new("Monty Bags", 2100987000)
vc4 = VC.new("Scrooge McDuck", 5610000006700)

fund1 = FundingRound.new(startup1, vc2, "Angle")
fund2 = FundingRound.new(startup2, vc1, "Pre-Seed")
fund3 = FundingRound.new(startup3, vc4, "Series A")
fund4 = FundingRound.new(startup4, vc3, "Angle")
fund5 = FundingRound.new(startup1, vc1, "Pre-Seed")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line