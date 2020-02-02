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

  def offer_contract
  end

  def funding_rounds
  end

  def portfolio
  end

  def biggest_investment
  end

  def invested
  end

end
