require 'pry'


class Dog
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.print_all
    @@all.map do |dogs|
      puts dogs.name
    end
  end

  def self.clear_all
    @@all.clear
  end

  def save
    @@all << self
  end

end

# ball = Dog.new("Ball")
# terry = Dog.new("Terry")
# april = Dog.new("April")
