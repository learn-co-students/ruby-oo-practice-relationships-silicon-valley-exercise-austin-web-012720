class Startup
  attr_reader :founder
  attr_accessor :name, :domain

  @@all = []
  #@@all is a collection of startup instances <name, founder, domain>

  def self.all
    @@all
  end

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain

    @@all << self
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
    self
  end

  def self.find_by_founder(founders)
    self.all.find do |startup|
      startup.founder == founder
    end
  end

  def self.domains
    self.all.map do |startup|
      startup.domain.uniq
    end
  end
  
  def self.sign_contract(vc, type, worth)
    Fundinground.new(self, vc, type)
  end  
  
end
