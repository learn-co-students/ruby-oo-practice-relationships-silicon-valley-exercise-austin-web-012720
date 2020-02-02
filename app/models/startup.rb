class Startup
  attr_accessor :name
  attr_reader :founder, :domain

    @@all = []

    def initialize (name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all<< self

    end

    def self.all
        @@all 
    end

    # given a string of a domain and a string of a name, 
    # change the domain and name of the startup. 
    def pivot(domain, name)
        @domain = domain
        @name = name
    end
    #given a string of a founder's name,
    #returns the first startup whose founder's name matches

     def self.find_by_founder(founder_name)
        @@all.find {|person| person.founder == founder_name}
     end


     #should return all of the startup instances
     def self.domains
        @@all.map {|startup| startup.domain }
     end


#Associations and Aggregate Methods


#given a venture capitalist object, type of investment (as a string), and the amount invested (as a float), creates a new funding round and
 #associates it with that startup and venture capitalist.
     def sign_contract(venture_capitalist, type, amount)
        FundingRound.new(venture_capitalist, self, type, amount)
     end
     
     #Returns the total number of funding rounds that the startup has gotten
     def num_funding_rounds
        FundingRound.all.select do |funding_round| 
            funding_round.startup == self
        end
     end

     #Returns the total sum of investments that the startup has gotten
     def total_funds
      
        num_funding_rounds.map { |total| total.amount }.sum

     end 
    #  Returns a unique array of all the venture capitalists 
    #  that have invested in this company
     def investors
        num_funding_rounds.map { |vc| 
            vc.venture_capitalist }.uniq
    end
    # Returns a unique array of all the venture capitalists that have invested in 
    # this company and are in the Trés Commas club
    def big_investors
        num_funding_rounds.select do |each_VC| 
            if each_VC.amount > 1000000000 
                each_VC.venture_capitalist
            end
        end
    end
end
