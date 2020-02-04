class VentureCapitalist

    attr_accessor :name, :net_worth

    @@all = []
    

    def initialize(name, net_worth)
        @name = name 
        @net_worth = net_worth
        @@all << self
    end

    def name
    # Show the name of this VentureCapitalist instance
        @name
    end

    def total_worth
        @net_worth
    end

    def self.all 
        @@all
    end

    def self.tres_commas_club
        @@all.select do |each_VC| 
            if each_VC.total_worth > 1000000000 
                each_VC.name 
            end
        end
    end

    def offer_contract(startup, type, amount)
        new_rounds = []
        new_round = FundingRound.new(startup, self, type, amount)
        new_rounds << new_round
  end

end
