class Food < Product
  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end
