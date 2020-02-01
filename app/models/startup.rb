class Startup
    attr_accessor :name, :domain
    attr_reader :founder
    @@all = []
        def initialize(name,founder,domain)
            @name = name
            @founder = founder
            @domain = domain
            @@all << self
        end



        def pivot(domain, name)
          self.domain = domain
          self.name = name
        end
        def self.all
          @@all
        end

        def self.find_by_founder(founder)
          self.all.find {|i| i.founder == founder}
        end

        def self.domains
          self.all.each {|i| i.domain}
        end

        def sign_contract(type_of_investment,amount,vc)
          contract = FundingRound.new(type_of_investment, amount, self, vc)
          return contract
        end
        def num_funding_rounds
          # Returns the total number of funding rounds that the startup has gotten
          FundingRound.all.count {|i| i.startup == self}
        end
        def total_funds
          total = 0
          FundingRound.all.each do |i|
            if i.startup == self
              total += i.investment
            end
          end
          return total
        end
        def investors
          array = FundingRound.all.select {|i| i.startup == self}.collect {|i| i.vc}
          return array.uniq
        end
        def big_investors
          array = self.investors
          array.select {|i| i.total_worth > 1000000000}
        end


end
