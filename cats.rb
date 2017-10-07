
class Cat

  def initialize (name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at

    if @meal_time > 12
      return "the meal time is #{@meal_time - 12} PM"

    elsif @meal_time >= 1 && @meal_time <=11
      return  "the meal time is #{@meal_time} AM"

    else
      return  "the meal time is midnight"

    end

  end


  def meow
    "my name is #{@name} and I like #{@preferred_food} which I eat at... hmmm.. well I think #{eats_at}"
  end



end



cat1 = Cat.new("fluffy","tuna",0)
cat2 = Cat.new("sparkles","beef",9)

p cat1.eats_at
p cat2.eats_at

p cat1
p cat2

p cat1.meow
p cat2.meow
