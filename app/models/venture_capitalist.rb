# Many to one with FundingRound
class VC
  attr_accessor :name, :worth, :startup, :type, :amount

  @@all = []
  def self.all
    @@all
  end 

  def initialize(name, worth)
    @name = name
    @worth = worth
    @@all << self
  end 

  def total_worth
    self.worth
  end 

  def self.tres_comma_club
    self.all.select { |w| w.total_worth >= 1000000000 }
  end 

  def offer_contract(startup, type, amount)
    FundingRound.new(startup, type, amount)
  end 

  def funding_rounds
    FundingRound.all.select { |f| f.vc == self }
  end 

end
