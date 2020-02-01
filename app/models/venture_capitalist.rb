class VC
  attr_accessor :name, :worth
  
  @@all = []
   
  def initialize(name, worth)
    @name = name
    @worth = worth

    @@all << self
  end
  
  def self.all
    @@all
  end

  def total_worth
    self.worth
  end

  def self.tres_commas_club
    self.all.select do |venturec|
      venturec.total_worth >= 1000000000
    end
  end

end
