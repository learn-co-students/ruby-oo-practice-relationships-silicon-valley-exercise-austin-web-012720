class FundingRound

attr_reader :startup, :investor 
attr_accessor :type, :amount

@@all = []

    def initialize(startup, investor, type, amount)
        @startup = startup 
        @investor = investor
        @type = type
        @amount = amount
        @@all << self
    end

    def startup
        @startup
    end

    def venture_capitalist
        self.investor
    end

    def self.all
        @@all
    end

    def type
        @type
    end

    def investment
        
        if self.amount < 0
            puts "ERROR: Cannot be a negative number"
        else self.amount.to_f
        end
    end

end
