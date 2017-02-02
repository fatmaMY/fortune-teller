class FortuneTeller::Horoscope
    attr_accessor :name, :date, :content
    @@all = []

    def initialize
      @@all << self
    end

    def self.all
      @@all
    end
  end
