require 'pry'
# to convert liters per 100 k to miles per gallon

def convert_to_mpg(litres,per_hundred_km)
  @litres = litres
  @per_hundred_km = per_hundred_km
  gallons =  litres/3.78541
  miles = per_hundred_km/1.6
  gas_mileage = miles/gallons
  puts "#{litres} litres per #{per_hundred_km} kms driven is equal to #{gas_mileage.round(1)} miles per gallon"
end

  convert_to_mpg(6,100)
