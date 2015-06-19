class Item
  #attr_accessor :description # dai dien cho 2 attr duoi day
  #attr_reader :description
  #attr_writer :description
  attr_reader :id #can not change id
  attr_accessor :price, :description
  def initialize(description,price)
    @id = rand(100..999)
    @description = description
    @price = price
    @size = []
  end

  def size
    return @size
  end

  def add_size(size)
    @size << size
  end

  def remove_size(size)
    @size.delete(size)
  end

  def to_s
    return"#{@id}\t#{@description}\t#{@price} sizes: " + @size.join(", ")
  end
end
shirt = Item.new("shirt",19.99)
shirt.add_size(["large","small"])
shirt.add_size("xlarge")
puts shirt.size.inspect
pants = Item.new("pants",49.99)
puts shirt
shirt.remove_size("xlarge")
puts shirt
puts pants

puts shirt.description
puts shirt.price
# change value
shirt.description = "ao so mi"
puts shirt.description