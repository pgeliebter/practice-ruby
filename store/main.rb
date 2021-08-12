require "./food.rb"
require "./drinks.rb"

drink1 = Drink.new(size: 20.0, measurement: "oz", price: 2.00, name: "Cherry Coke Zero", taxable: true, container: "bottle")
drink2 = Drink.new(size: 16.9, measurement: "oz", price: 1.0, name: "Water", taxable: false, container: "bottle")
food1 = Food.new(size: 3, measurement: "oz", price: 2.00, name: "Cape Code Kettle Cooked Mesquite BBQ Chips", taxable: true)
food2 = Food.new(size: 2, measurement: "cookies", price: 1.0, name: "Oreos", taxable: true)

drink_array = []
drink_array << drink1
drink_array << drink2

food_array = []
food_array << food1
food_array << food2

#drink1.price = 1.75

#drink1.total

# lists all drinks
puts "Here is a list of all our food:"
food_array.each do |x|
  puts x.name
end

puts "Here is a list of all our drinks:"
drink_array.each do |x|
  puts x.name
end

# Need to change to accept either food or drinks

# puts "Choose one of our drinks by typing it in below:"
# response = gets.chomp.split.map(&:capitalize).join(" ")
# drink_array.each do |x|
#   if response == x.name
#     if x.taxable
#       puts "Your item has tax so:"
#       x.total
#     else
#       x.total
#     end
#   end
# end
