require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("Cool_tech", "Mark", "domain@test.com")
startup2 = Startup.new("Dance_studio", "Sydney", "dance@test.com")
startup3 = Startup.new("Space_robots", "Sophie", "space@test.com")

jim = VC.new("Jim", 100000)
jilynn = VC.new("Jilynn", 10000000000)
matt = VC.new("Matt", 1200000000000)
nancy = VC.new("Nancy", -130000)

var1 = startup1.sign_contract(jim, "seed", 100)
var2 = startup2.sign_contract(jilynn, "angel", 200)
var3 = startup1.sign_contract(matt, "angel", 500)

# foo = jim.offer_contract(startup1, "angel", 500)
bar = jim.offer_contract(startup2, "seed", 200)

#Should create a new funding round associated with a startup and vc


binding.pry
0 #leave this here to ensure binding.pry isn't the last line