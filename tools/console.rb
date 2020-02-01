require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("Cool_tech", "Mark")
startup2 = Startup.new("Dance_studio", "Sydney")
startup3 = Startup.new("Space_robots", "Sophie")

jim = VC.new("Jim", 100000)
jilynn = VC.new("Jilynn", 10000000000)
matt = VC.new("Matt", 1200000000000)
nancy = VC.new("Nancy", -130000)

fund1 = FundingRound.new(startup1, vc2, "type1")
fund2 = FundingRound.new(startup2, vc3, "type2")
fund3 = FundingRound.new(startup3, vc4, "type3")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line