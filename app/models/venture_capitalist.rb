class VentureCapitalist
    attr_accessor :name, :networth
    @@all = []

    def initialize (name, networth)
        @name = name 
        @networth = networth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@all.select do |each_VC| 
            if each_VC.networth > 1000000000 
                each_VC.name
            end
        end
    end
    # given a startup object, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with 
    # that startup and venture capitalist.
    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, type, amount)
     end

    #  returns an array of all funding rounds for that venture capitalist
     def funding_rounds
        FundingRound.all.select do |funding_round| 
            funding_round.venture_capitalist == self
        end
     end


    #  Returns a unique list of all startups this venture capitalist has funded
     def portfolio
        FundingRound.all.select { |startup| 
        startup.venture_capitalist == self}.uniq
     end


    #  returns the largest funding round given by this venture capitalist
     def biggest_investment
        max = 0
        funding_rounds.each do |round| 
            if round.investment > max
                max = round.investment
            end
        end
        max
       
     end

    #  given a domain string, returns the total amount invested in that domain
     def invested(domain)
        total = 0
        funding_rounds.each do |funding|
            total += funding.investment if funding.startup.domain == domain
        end
        total
    end

end
