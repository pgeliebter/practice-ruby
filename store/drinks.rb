require "./itemsable.rb"

class Drink
  include Itemsable

  def initialize(input_options)
    @container = input_options[:container]
  end
end
