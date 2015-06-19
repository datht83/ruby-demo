class Item
  #attr_accessor :description # dai dien cho 2 attr duoi day
  #attr_reader :description #getter
  #attr_writer :description #setter
  attr_reader :id #can not change id
  attr_accessor :price, :description
  @@last_id = 0 #class variable
  @@use_ids = []

  def initialize(description,price)
    @@store = "my store"
    #@id = @@last_id + 1
    #@@last_id += 1
    @id = rand(100..999)
    while @@use_ids.include?(@id)
      @id = rand(100..900)
    end
    @@use_ids << @id
    @description = description
    @price = price
    @size = []
  end

  def use_ids
    return @@use_ids.join(", ")
  end

  def store
    return @@store
  end

  def store=(store)
    @@store = store
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
#@@ variable
puts shirt.store
puts pants.store
#descripttion
puts"=============before chage des============="
puts shirt.description
puts pants.description
shirt.description = 'chage des'
puts"=============after chage des============="
puts shirt.description
puts pants.description

shirt.store = 'change my store'
puts "==========after chage store================"
puts shirt.store
puts pants.store
#last id
#puts shirt.id
#puts pants.id
puts pants.use_ids