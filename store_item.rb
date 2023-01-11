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
     @color = input_options [:color]
    @price = input_options [:price]
    @item = input_options [:item]
  end


  # def color
  #   @color
  # end

  # def price
  #   @price
  # end

  # def item
  #   @item
  # end

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

product = Product.new( item:"charger", price: 20, color: "blue")
product.print_info
food = Food.new(item:"apple", price: 10, color: "red", shelf_life: 20)
p food
