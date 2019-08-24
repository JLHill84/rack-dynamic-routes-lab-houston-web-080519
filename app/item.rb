class Item
  attr_accessor :name, :price


  def initialize(name,price)
    @name = name
    @price = price
    @@item << self
  end
  
  def self.all
    return @@item
  end
  
end
