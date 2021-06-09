# item1 = { name: "water", color: "clear", price: "free", brand: "Deer Park" }
# item2 = { name: "soda", color: "red", price: 2.00, brand: "Cherry Coke Zero" }
# item3 = { :name => "seltzer", :color => "clear", :price => 1.00, :brand => "Bubly" }

# p "#{item1[:brand]} #{item1[:name]} is #{item1[:price]}."
# p "#{item1[:brand]} #{item1[:name]} is #{item1[:price]}."
# p "#{item1[:brand]} #{item1[:name]} is #{item1[:price]}."

# item1 = { name: "water", :goal => "hey" }


class Item
  def initialize(input_name,input_color,input_price,input_brand)
    @name = input_name
    @color = input_color
    @price = input_price
    @brand = input_brand
  end
  def brand=(input_brand)
    @brand = input_brand
  end
  def brand
    @brand
  end
  def price=(input_price)
    @price = price
  end
  def price
    @price
  end


end


