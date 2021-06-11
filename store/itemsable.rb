module Itemsable
  attr_reader :name, :size
  attr_accessor :taxable, :price

  def initialize(input_options)
    @size = input_options[:size]
    @price = input_options[:price]
    @name = input_options[:name]
    @taxable = input_options[:taxable]
    @measurement = input_options[:measurement]
  end

  def total_price
    if @taxable == true
      @price * 1.0875
    else
      @price
    end
  end

  def total
    puts "#{name} "
    puts "For a #{size} #{measurement} #{name} , your total is #{total_price}"
  end
end
