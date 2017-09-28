#solar.rb

require 'pry'

#First we'll need a class to represent the solar system. Let's call it System, and give it an attribute bodies. bodies will start as an empty array (ie. [])

class System

  @@bodies = []

  def initialize(solar_system)
    @solar_system = solar_system
  end

  def add (planet)
      @@bodies << planet
      return planet
  end

#We'll also need an instance method called total_mass which should add up the mass of all the bodies in bodies, and return it.

  def mass()
  end

  class Body

    def initialize
      @name = name
      @mass = mass
    end
  end


end


p solar = System.new("Solar_System")
p solar = 
