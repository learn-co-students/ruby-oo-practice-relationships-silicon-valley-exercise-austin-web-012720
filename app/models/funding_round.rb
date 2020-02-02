# Belongs to StartUp & VC
class FundingRound
  attr_reader :startup, :vc
  attr_accessor :type

  @@all = []
  def self.all
    @@all
  end 

  def initialize(startup, vc, type)
    @startup = startup
    @vc = vc
    @type = type
    @@all << self
  end 

  def investment
    vc.worth.to_f > 0 ? vc.worth.to_f : "no funds"
  end 

end
