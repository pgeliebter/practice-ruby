require "./itemsable.rb"

class Drinks
  include Itemsable

  def initialize(input_options)
    @container = input_options[:container]
  end
end
