class VC
  attr_accessor :name, :worth
  
  @@all = []
  #This is an array of venture capitalists objects <name, worth>

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

  def self.tres_commas_club
    #.select returns a new array of vc that are worth more than 1 billion
    self.all.select do |venturec|
      venturec.total_worth >= 1000000000
    end
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  def funding_rounds
    FundingRound.all.select {|round| round.vc == self}
  end

  def portfolio
    #first line returns and array of all funding rounds for a specific investor
    portfolio = FundingRound.all.select {|round| round.vc == self}
    #this line will access the startup and return an array of only unique startups
    portfolio.map {|round| round.startup}.uniq
  end

  def biggest_investment
    #need help on this
    self.funding_rounds.select do |round, investment|
    end
  end

  def invested(domain)
    #need to finish this
    #help on what this is supposed to return
  end

end
