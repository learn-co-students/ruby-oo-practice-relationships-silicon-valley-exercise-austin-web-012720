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

jim = VC.new("Jim", 10000)
jilynn = VC.new("Jilynn", 10000000000)
matt = VC.new("Matt", 1200000000000)
nancy = VC.new("Nancy", 130000000)


var1 = startup1.sign_contract(jim, "seed", 100)
var2 = startup2.sign_contract(jilynn, "angel", 200)
var3 = startup1.sign_contract(matt, "angel", 500)
var4 = startup2.sign_contract(jilynn, "seed", 600)
var5 = startup3. sign_contract(jilynn, "angel", 200)

foo = jim.offer_contract(startup1, "angel", 500)
bar = jim.offer_contract(startup2, "seed", 200)
contract1 = matt.offer_contract(startup3, "seed", 10000)
contract2 = matt.offer_contract(startup3, "second", 200000)
conract3 = matt.offer_contract(startup1, "seed", 700)
#Should create a new funding round associated with a startup and vc


how_much = jim.invested("domain@test.com")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line