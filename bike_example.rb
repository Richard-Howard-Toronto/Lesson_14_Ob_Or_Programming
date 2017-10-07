class Bike

  def initialize

  end


#reader

  def name
    @name
  end

  def size
    @size
  end

  def color
    @color
  end

#writer
  def name= name
   @name = name
  end

  def size= size
    @size = size
  end

  def color= color
    @color = color
  end

end

bike1 = Bike.new
bike2 = Bike.new

bike1.name = "Miele"
bike1.size = "Large"
bike1.color = "Blue"

bike2.name = "Nishiki"
bike2.size = "Small"
bike2.color = "Green"

p bike1.name
p bike1.size
p Bike.inspect
