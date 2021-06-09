


class Drinks

  attr_reader :name, :size, :taxabale
  attr_writer :price, :taxabale

  def initialize(input_size,input_price,input_name,input_taxabale)
    @size = input_size
    @price = input_price
    @name = input_name
    @taxabale = input_taxabale
  end

  def price
    if taxabale == true
      @price * 1.0875
    else
      @price
    end
  end

  def total
    puts "For a #{size}oz #{name}, your price is #{price}"
  end

end

drink1 = Drinks.new(20.0,2.00,"Cherry Coke Zero",true)
drink2 = Drinks.new(16.9,1.0,"Water",false)

drink1.price = 1.75

drink1.total


