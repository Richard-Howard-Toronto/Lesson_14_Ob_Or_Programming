class Mammal

  def breathe
    puts "inhale and exhale"
  end

  def run
    puts "running"
  end

end

class Cat < Mammal

  def speak
    puts "meow"
  end

end

fluffy = Cat.new
fluffy.speak
fluffy.run
fluffy.breathe
