class FundingRound
  attr_reader :startup, :vc
  attr_accessor :type, :investment

  @@all = []

  def self.all
    @@all
  end
  
  def initialize(startup, vc, type, investment)
    @startup = startup
    @vc = vc
    @type = type
    @investment = investment.to_f

    @@all << self
  end

  def investment
    @investment 
  end

end
