class VentureCapitalist

attr_reader :total_worth, :name

  @@all = []

  def initialize(name, total_worth)
    @name  = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    self.all.select {|i| i.total_worth > 1000000000}
  end

  def offer_contract(type_of_investment,amount,startup)
    contract = FundingRound.new(type_of_investment, amount, startup, self)
    return contract
  end

  def funding_rounds
    FundingRound.all.select {|i| i.vc == self}
  end

  def portfolio
    array = self.funding_rounds.collect{|i| i.startup }
    return array.uniq
  end

  def biggest_investment
    array = self.funding_rounds.collect{|i| i.investment}
    return array.max
  end

  def invested(domain)
    array_of_rounds = self.funding_rounds
    total = 0
    array_of_rounds.each do |k|
      if k.startup.domain == domain
        total += k.investment
      end
    end
    total

  end
end
