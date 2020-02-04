class Startup
  attr_reader :founder
  attr_accessor :name, :domain, :vc

  @@all = []
  #@@all is a collection of startup instances <name, founder, domain>

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
    #self to return the modified object, otherwise it will return only the last line which is name
  end

  def self.find_by_founder(founder)
    #.find returns the first startup.founder that matches the founder
    self.all.find {|startup| startup.founder == founder}
  end

  def self.domains
    #.map is returning an array of the domains of all the startups
    self.all.map {|startup| startup.domain}
  end

  def sign_contract(vc, type, investment)
     FundingRound.new(self, vc, type, investment)
  end 
     
  def num_funding_rounds
    FundingRound.all.select {|round| round.startup == self}.count
  end

  def total_funds
    sum_of_investments = 0
    funding_rounds_found = FundingRound.all.select {|round| round.startup == self}
    funding_rounds_found.each do |round|
      sum_of_investments += round.investment
    end
    sum_of_investments   
  end

  def investors
    #returns an array of all the unique investors that have invested in a startup
     funding_rounds_found = FundingRound.all.select {|round| round.startup == self}
     funding_rounds_found.map {|round| round.vc}.uniq
  end

  def big_investors
    #this checks if the investors invested in a startup are also in the array of investors in the club
    self.investors.select do |investor|
      VC.tres_commas_club.include?(investor)
    end
  end
  
end
