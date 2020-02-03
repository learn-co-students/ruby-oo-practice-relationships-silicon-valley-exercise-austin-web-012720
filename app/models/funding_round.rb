class FundingRound
    attr_reader :startup, :venture_capitalist, :investment
    attr_accessor :type

    @@all = []

    def initialize(startup, venture_capitalist, investment = 0, type = nil)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @investment = investment
        @type = type
        @@all << self

    end

    def investment=(num)
        if num >= 0 
            @investment += num.to_f 
        else
            puts "Don't take money from us please"
            @investment
        end
    
    end

    def self.all
        @@all
    end

    

end
