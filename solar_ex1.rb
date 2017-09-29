
require 'pry'

class System #give it an attribute bodies

    def initialize
      @bodies = []
    end

    def add(body)
      @bodies << body
      return body
    end

    def add_mass
      array1 = @bodies #how to add masses
      binding.pry
    end

end


class Body

  def initialize (name, value)
    @name  = name
    @mass  = value
  end

# CREATE 2 READERS

    def name
      @name
    end

    def mass
      @mass
    end


  #WRITERS


  def name=(name)
    @name = name
    puts "you changed the name to #{@name}"
  end

  def mass=(val)  #val passed from outside class
    @mass = val
    puts "the new mass is #{@mass}"
  end

end

class Planet < Body

  #writer
  def rotation(day,year)
    @day = day
    @year = year
  end

  #reads
  def rotation
    @day
    @year
  end

  def print_all
    puts "#{name},#{mass},#{day},#{year}""
  end

end


class Sun < Body

  #writer

  def type(type)
    @type = type
  end

end


class Moon < Body

  #writer
  def periodicity(orbit_days)
    @orbit_days = orbit_days
  end

  #reader
  def periodicity
    @orbit_days
  end

  def orbit_planet(set_planet)
    @planet = set_planet
  end

end






#now write an instance

neptune = Body.new('Neptune',143)
venus = Body.new('Venus',222)
mercury = Body.new('Mercury',333)
saturn = Body.new('Saturn',444)
mars = Body.new('Mars',111)

moon1 = Moon.new('moon1',2)



#readers

p mars.name
p venus.name
p mars.mass
p venus.mass

p moon1.orbit_planet(neptune)

#writers mars

mars.mass = 999

#reader

mars.mass
