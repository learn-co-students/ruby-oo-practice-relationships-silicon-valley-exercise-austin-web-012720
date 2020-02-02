# Many to one with FundingRound
class Startup
  attr_accessor :name, :domain, :vc
  attr_reader :founder

  @@all = []
  def self.all
    @@all
  end 

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end 

  def pivot(domain, name)
      @domain = domain
      @name = name
      self
  end 

  # search all startups for founders
  # return first startup in array with
  # provided founder arg
  def self.find_by_founder(founder)
    self.all.find { |f| f.founder == founder }
  end 

  def self.domains
    self.all.map { |d| d.domain }.uniq
  end 

  def sign_contract(vc, type, amount)
    FundingRound.new(vc, type, amount)
  end 

  def num_funding_rounds
    FundingRound.all.select { |f| f.startup == self }.size
  end 

  # def total_funds
  # end 

  # def investors
  # end 

  # def big_investors
  # end

end
