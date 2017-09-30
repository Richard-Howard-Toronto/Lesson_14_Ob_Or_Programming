
require 'pry'

class System #give it an attribute bodies

    def initialize
      @bodies = []
    end

    def add(body)
      @bodies << body
      return body
    end

    def mass?
      x = 0
      @bodies.each do |body|
        x += body.mass
        end
      return x
    end


    def moonmass?
      x = 0
        @bodies.each do |body|
          if body.class == Moon
            x += body.mass
          end
        end
        return x
    end

    def mooncycles?
      x = 0
      @bodies.each do |body|
        if body.class == Moon
        x += body.periodicity
        end
      end
        return x
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
  def rotationy(day,year)
    @day = day
    @year = year
  end

  #reads
  def rotationx
    @day
    @year
  end

  def print_all
    puts "print all: #{name},#{mass},#{day},#{year}"
  end

end


class Sun < Body

  #writer

  def type=(type)
    @type = type
  end

  def type
    puts "the type is #{@type}"
  end


end


class Moon < Body

  #writer
  def periodicity=(orbit_days)
    @orbit_days = orbit_days
  end

  #reader
  def periodicity
    @orbit_days
  end

  def orbit_planet(set_planet)
    @planet = set_planet
    puts "the moon orbits #{@planet} with a periodicity of #{@orbit_days}"
  end

end


our_solar_system = System.new
alpha_centauri = System.new

neptune = Body.new('Neptune',143)
venus = Body.new('Venus',222)
mercury = Body.new('Mercury',333)
saturn = Body.new('Saturn',444)
mars = Body.new('Mars',111)
sun1 = Sun.new('g2v',12312)
moon1 = Moon.new('moon1',13)
moon2 = Moon.new('moon2',22)
moon3 = Moon.new('moon1',33)

our_solar_system.add(venus)
our_solar_system.add(neptune)
our_solar_system.add(mercury)
our_solar_system.add(saturn)
our_solar_system.add(mars)
our_solar_system.add(moon1)
our_solar_system.add(moon2)
our_solar_system.add(moon3)
our_solar_system.add(sun1)

giantstar = System.new()
alpha_centauri.add(giantstar)
p "---"
p alpha_centauri.inspect
p "---"

#readers

p mars.name
p venus.name
p mars.mass
p venus.mass

#writers mars
mars.mass = 999
mars.mass = 2000
moon1.periodicity = 100  #ruby says
moon1.orbit_planet('X-earth')
moon2.periodicity = 200
moon3.periodicity = 300


p sun1.name
p sun1.mass
p mars.mass

p our_solar_system.mass?
p our_solar_system.moonmass?
p our_solar_system.mooncycles?
