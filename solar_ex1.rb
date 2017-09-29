
require 'pry'

class Body

  @@bodies = []

  def initialize (name, val)
    @name  = name
    @mass  = val
  end

# CREATE FOUR READERS

    def name
      @name
    end

    def mass
      @mass
    end


  #WRITERS

  def all_bodies
    @@allbodies
  end


  def name=(name)
    @name = name
    puts "you changed the name to #{@name}"
  end

  def mass=(val)  #val passed from outside class
    @mass = val
    puts "the new mass is #{@mass}"
  end


end

#now write an instance

mars = Body.new('Mars',111)
venus = Body.new('Venus',222)
mercury = Body.new('Mercury',333)
saturn = Body.new('Saturn',444)

#readers

p mars.name
p mars.mass
p venus.mass

#writers mars

mars.mass = 1110

#reader

mars.mass
