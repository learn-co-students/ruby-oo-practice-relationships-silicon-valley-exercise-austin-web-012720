class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all =[]

    def initialize(name, total)
        @name = name
        @total_worth = total
        @@all << self

    end

    def offer_contract(startup, type, amount)
    
        FundingRound.new(startup, self, type, amount)
    end

    def funding_rounds
        FundingRound.all.select do |fr|
            fr.venture_capitalist == self
        end
    end

    def portfolio
        funding_rounds.collect do |fr|
            fr.startup.name
        end.uniq
    end

    def invested(domain)
        sum =0
        funding_rounds.each do  |fr| 
            sum += fr.investment if fr.startup.domain == domain
        end
        return sum
    end

    def biggest_investment
        biggest =0
        big = nil
        funding_rounds.each do |fr|
            if fr.investment > biggest
                big = fr
                biggest = fr.investment
            end
        end
        return big
    end

    def self.tres_commas_club
        
        @@all.select do |vc|
             vc.name if vc.total_worth >= 1000000000 
                
        end.collect do |vc|
            vc.name
        end
     
    end


    def self.all
        return @@all
    end

end
