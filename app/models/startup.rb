class Startup

attr_accessor :name, :domain, :investor, :type, :amount
attr_reader :founder

@@all = []
@@contracts_signed = []

# Instance Methods

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def name
    # Show the name of this Startup instance
       @name
    end

    def founder
    # Show the founder of this Startup instance
        @founder
    end

    def domain
    # Show the domain of this Startup instance
        @domain
    end

    def pivot(domain, name)
    # Updates the domain and name of the instance it's called on
        @domain = domain 
        @name = name
    end

    def sign_contract(investor, type, amount)
    #Creates a new funding round and associates it with the company you called it on
    #Example input: Company1.sign_contract(Investor1, "Angel", 100)
        contracts_signed = FundingRound.new(self, investor, type, amount)
        @@contracts_signed << contracts_signed
    end

    def num_funding_rounds
        startup_count = []
        new_startup = FundingRound.all.each do |round| 
            if Startup.all.name == self
        startup_count << new_startup
            end
            startup_count.length
        end
        # iterate over the funding roudns array for the inputed startup tp see their total
    

    end

# Class Methods

    def self.all
        @@all 
    end

    def self.find_by_founder(founder_name)
    #Given a string of a founder's name, returns the first startup whos founder's name matches
        @@all.find {|person| person.founder == founder_name }
    end
  
    def self.domains
    #Returns an array of all of the different startup domains
         @@all.map {|each_catain| each_domain.domain }
    end

end

This cat is a cat of  cat