# item1 = { name: "water", color: "clear", price: "free", brand: "Deer Park" }
# item2 = { name: "soda", color: "red", price: 2.00, brand: "Cherry Coke Zero" }
# item3 = { :name => "seltzer", :color => "clear", :price => 1.00, :brand => "Bubly" }

# p "#{item1[:brand]} #{item1[:name]} is #{item1[:price]}."
# p "#{item1[:brand]} #{item1[:name]} is #{item1[:price]}."
# p "#{item1[:brand]} #{item1[:name]} is #{item1[:price]}."

# item1 = { name: "water", :goal => "hey" }


class Drinks

  attr_reader :name, :size, :taxabale
  attr_writer :price, :taxabale

  def initialize(input_size,input_price,input_name,input_taxabale)
    @size = input_size
    @price = input_price
    @name = input_name
    @taxabale = input_taxabale
  end

  def name
    @name
  end

  def size
    @size
  end
  
  def price
    if taxabale == true
      @price * 1.0875
    else
      @price
    end
  end

  def taxabale
    @taxabale
  end

  def price=(input_price)
    @price = input_price
  end

  def total
    puts "For a #{size}oz #{name}, your price is #{price}"
  end

end

drink1 = Drinks.new(20.0,2.00,"Cherry Coke Zero",true)
drink2 = Drinks.new(16.9,1.0,"Water",false)

drink1.price = 1.75

drink1.total


