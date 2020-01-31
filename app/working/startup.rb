class Startup

    
    attr_reader :founder, :domain
    attr_accessor :name 
    @@all = []
    def initialize(name, founder, domain = "Business")
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(name, domain)
        self.name = name
        @domain = domain
    end

    def sign_contract(vc, type, amount)
        FundingRound.new(self, vc, type, amount)

    end

    def investors
        FundingRound.all.select do |fr|
            fr.startup == self
        end.collect do |fr|
            fr.venture_capitalist
        end.uniq

    end

    def big_investors
        investors.select do |inv|
            VentureCapitalist.tres_commas_club.include?(inv.name)
        end
    end

    

    def total_funds
        total = 0
        FundingRound.all.each do |fr|
            if fr.startup == self
                total+= fr.investment
            end
        end
        return total
    end

    def num_funding_rounds
        FundingRound.all.select do |fr|
            fr.startup == self
        end.length
    end

    def self.find_by_founder(f)
        @@all.find do |s| 
            s.founder == f
        end
    end


    def self.domains
        arr = []
        @@all.each do |s|
            arr << s.domain
        end
        return arr.uniq
    end


    def self.all
        return @@all
    end



end
