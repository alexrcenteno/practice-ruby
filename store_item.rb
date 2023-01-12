# Hashes

# product1 = { color: "blue", price: 20, product: "charger" }
#product2 = { color: "red", price: 15, product: "stuffed animal" }
#product3 = { color: "indigo", price: 12, prodcut: "knife" }

#puts "The #{product1[:product]} costs #{product1[:price]} and its color is #{product1[:color]}"

product1 = { color: "blue", price: 20, product: "charger" }
product2 = { color: "red", price: 15, product: "stuffed animal" }
product3 = { color: "indigo", price: 12, prodcut: "knife" }

class Product
  attr_reader :color, :price, :item

  def initialize(input_options)
    @color = input_options[:color]
    @price = input_options[:price]
    @item = input_options[:item]
  end

  def print_info
    puts "the #{item} costs #{price} and its color is #{color}"
  end
end

class Food < Product
  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

module Productmodule
  def print_info
    puts "the #{item} costs #{price} and its color is #{color}"
  end
end
