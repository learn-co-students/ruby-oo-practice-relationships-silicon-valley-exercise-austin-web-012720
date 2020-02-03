class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self

    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        all.select { |caps| caps.total_worth > 1000000000}
    end

    def offer_contract(startup, type, amount)
        FundingRound.new(startup, self, amount, type)
    end

    def funding_rounds
        FundingRound.all.select { |funded| funded.venture_capitalist == self}
    end

    def portfolio
        arr = funding_rounds.map { |funded| funded.startup }
        arr.uniq
    end

    def biggest_investment
        funding_rounds.max_by { |funded| funded.investment }
    end

    def invested(domain)
        arr = funding_rounds.select { |funded| funded.startup.domain == domain}
        arr.sum { |funded| funded.investment}
    end

end
