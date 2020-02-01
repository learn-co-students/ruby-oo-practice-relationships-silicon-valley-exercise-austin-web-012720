class FundingRound


attr_reader :type, :investment, :startup, :vc

@@round = []
  def initialize(type, investment, startup, vc)
    @type = type
    @investment = investment
    @startup = startup
    @vc = vc
    @@round << self
  end

  def startup=(startup)
    if startup.class == Startup
      return startup
    end

  end

  def venture_capitalist=(vc)
    if vc.class == VentureCapitalist
      return vc
    end

  end

  def self.all
    @@round
  end


end
