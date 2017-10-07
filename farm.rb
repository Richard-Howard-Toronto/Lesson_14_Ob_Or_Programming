
require 'pry'

class Farm

  @@bushels_available = 0

  def initialize (corn_bushels,wheat_bushels)
    @corn_bushels = 0
    @wheat_bushels = 0
    @total_bushels = 0
    @fall_harvest_percent = 0.9
  end

  def sow
    yield_per_acre_corn = 20
    yield_per_acre_wheat = 30
    puts "how many acres of corn?"
    corn_acres = gets.chomp.to_i
    puts "how many acres of wheat?"
    wheat_acres = gets.chomp.to_i
    corn_bushels = corn_acres * yield_per_acre_corn
    wheat_bushels = wheat_acres * yield_per_acre_wheat
    @total_bushels = corn_bushels + wheat_bushels
    @@bushels_available = @total_bushels
    puts "you have sowed #{corn_acres} of corn and #{wheat_acres} of wheat for total bushels of #{@total_bushels}"
  end

  def total_bushels
    @@bushels_available
  end

  def fall_harvest
    puts "bushels harvested after fall harvest is #{@@bushels_available *= @fall_harvest_percent}"
  end


end


season1 = Farm.new(0,0)

season1.sow

p "total bushels = #{season1.total_bushels}"

season1.fall_harvest

p "total bushels = #{season1.total_bushels}"
