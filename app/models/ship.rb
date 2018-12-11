require "pry"

class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    # binding.pry
    self.class.all << self
  end

  def self.clear
    self.all.clear
  end

end
