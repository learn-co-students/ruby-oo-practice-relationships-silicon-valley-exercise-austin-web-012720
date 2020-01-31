class FundingRound

    attr_reader :startup, :investment, :venture_capitalist
    attr_accessor  :type
    @@all = []
    def initialize(startup ,vc, type = "Angel", investment)
        @startup = startup 
        @venture_capitalist = vc
        @type = type
        self.investment = investment
        @@all << self

    end

    def investment=(inv)
        if inv>0
            @investment = inv
        else
            @investment = 0
        end
    
    end

    def self.all
        return @@all

    end

end
