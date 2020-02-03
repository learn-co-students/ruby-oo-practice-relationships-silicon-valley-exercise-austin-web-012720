class Startup
    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self

    end

    def self.all
        @@all
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder(founder)
        all.find{ |startup| startup.founder == founder}
    end

    def self.domains
        all.map { |startup| startup.domain }
    end
        
    def sign_contract(venture_capitalist, type, amount)
        FundingRound.new(self, venture_capitalist, amount, type)
    end

    def num_funding_rounds
        FundingRound.all.select { |funded| funded.startup == self}
    end

    def total_funds
        funds = 0
        num_funding_rounds.each { |funded| funds += funded.investment}
    end

    def investors
        arr = num_funding_rounds.map { |funded| funded.venture_capitalist }
        arr.uniq
    end

    def big_investors
        investors & VentureCapitalist.tres_commas_club
    end

end
