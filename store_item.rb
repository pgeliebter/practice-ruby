class Drinks
  attr_reader :name, :size
  attr_accessor :taxable, :price

  def initialize(input_options)
    @size = input_options[:size]
    @price = input_options[:price]
    @name = input_options[:name]
    @taxable = input_options[:taxable]
  end

  def totalPrice
    if @taxable == true
      @price * 1.0875
    else
      @price
    end
  end

  def total
    puts "For a #{size}oz #{name}, your total is #{total_price}"
  end
end

drink1 = Drinks.new(size: 20.0, price: 2.00, name: "Cherry Coke Zero", taxable: true)
drink2 = Drinks.new(size: 16.9, price: 1.0, name: "Water", taxable: false)

drink_array = []
drink_array << drink1
drink_array << drink2

#drink1.price = 1.75

#drink1.total

# lists all drinks
puts "Here is a list of all our drinks:"
drink_array.each do |x|
  puts x.name
end

# takes response of typed drink and returns total price
puts "Choose one of our drinks by typing it in below:"
response = gets.chomp.split.map(&:capitalize).join(" ")
drink_array.each do |x|
  if response == x.name
    if x.taxable
      puts "Your item has tax so:"
      x.total
    else
      x.total
    end
  end
end
