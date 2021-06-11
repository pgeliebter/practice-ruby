require "./food.rb"
require "./drinks.rb"

drink1 = Drinks.new(size: 20.0, measurement: "oz", price: 2.00, name: "Cherry Coke Zero", taxable: true)
drink2 = Drinks.new(size: 16.9, measurement: "oz", price: 1.0, name: "Water", taxable: false)
drink1 = Food.new(size: 3, measurement: "oz", price: 2.00, name: "Cape Code Kettle Cooked Mesquite BBQ Chips", taxable: true)
drink2 = Food.new(size: 2, measurement: "cookies", price: 1.0, name: "Oreos", taxable: true)

drink_array = []
drink_array << drink1
drink_array << drink2

food_array = []

#drink1.price = 1.75

#drink1.total

# lists all drinks
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
