require 'pry'

puts "enter a number"

a = gets.chomp.to_i

puts case a
when 1
  corn_food = 0
  wheat_food = 0
  corn_yield_hectare = 20
  wheat_yield_hectare = 20
  total_food = 0


  #----- the calcs
  puts "do you want corn or wheat"
  food_type = gets.chomp
  puts "how many hectares"
  hectares = gets.chomp.to_i

  if food_type == 'corn'
    corn_food = corn_yield_hectare.to_i * hectares.to_i

  else food_type == 'wheat'
    wheat_food = wheat_yield_hectare.to_i * hectares.to_i
  end

  total_food = wheat_food + corn_food

  puts "total food is #{total_food} food units"

when 2
  p total_food
  "We will add increment food by one growing season"
when 3
  "Display current status of food"
when 4
  "Relax"
  drinksarray = ['bud light', 'pbr','merlot','cheese platter']
  s = drinksarray.sample
  puts "relax and have a #{s}"
when 5
  puts "exiting program....."
  exit
else
  "You gave me #{a} -- I have no idea what to do with that."
end
