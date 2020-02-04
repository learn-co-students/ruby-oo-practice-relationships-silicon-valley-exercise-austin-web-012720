require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Company1 = Startup.new("Google", "Joe", "Tech")
Company2 = Startup.new("Verizon", "Frank", "Phone")
Company3 = Startup.new("Apple", "Steve", "Tech")
Company4 = Startup.new("IBM", "Frank", "Tech")
Company5 = Startup.new("Sprint", "Joe", "Phone")

Investor1 = VentureCapitalist.new("Karen", 1500000000)
Investor2 = VentureCapitalist.new("Jelena", 3000000000)
Investor3 = VentureCapitalist.new("Jessica", 2500000000)
Investor4 = VentureCapitalist.new("Oprah", 5000000000)
Investor5 = VentureCapitalist.new("Martha", 4000000)

FundingRound1 = FundingRound.new(Company1, Investor1, "Angel", 100)
FundingRound2 = FundingRound.new(Company2, Investor2, "Series_B", 200)
FundingRound3 = FundingRound.new(Company3, Investor3, "Angel", -300)
FundingRound4 = FundingRound.new(Company4, Investor4, "Series_C", 400)
FundingRound5 = FundingRound.new(Company5, Investor5, "Series_C", 500)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line