class FundingRound
  attr_reader :startup, :vc
  attr_accessor :type, :investment

  #This is an array of all the funding rounds. It connects a startup with a vc
  @@all = []

  def self.all
    @@all
  end
  
  def initialize(startup, vc, type, investment)
    @startup = startup
    @vc = vc
    @type = type
    @investment = investment.to_f

    self.class.all << self
  end

  #I don't need this method because it is an attr_accessor
  # def investment
  #   @investment 
  # end

end
