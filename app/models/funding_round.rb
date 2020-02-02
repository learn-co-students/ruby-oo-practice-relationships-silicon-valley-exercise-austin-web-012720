class FundingRound
    attr_reader :venture_capitalist, :startup 
    attr_accessor :type, :amount
    @@all = []

    def initialize (startup, venture_capitalist, type, amount)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @amount = amount
        @@all << self
    end


    def self.all
        @@all
    end

   

    def investment
        if amount < 0
            puts "ERROR: Cannot be neg"
        else
        @amount.to_f
        end
    end

end
