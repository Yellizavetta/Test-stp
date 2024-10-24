class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    self.price = price 
  end

  def price=(value)
    puts "Ціна не може бути від'ємною" if value < 0
    @price = value unless value < 0
end
end

class Invoice
  attr_accessor :items

  def initialize
    @items = []
  end

  def add_item(item)
    existing_item = @items.find { |i| i.name == item.name }
    
    if existing_item
      existing_item.price = item.price 
    else
      @items << item
    end
  end

  def total_cost
    total = 0
    @items.each do |item|
      total += item.price
    end
    total
  end

  def display
    @items.each { |item| puts "#{item.name}: $#{'%.2f' % item.price}" }
    puts "Загальна вартість: $#{'%.2f' % total_cost}"
  end
end

invoice = Invoice.new
invoice.add_item(Item.new("Товар 1", 10.50))
invoice.add_item(Item.new("Товар 2", 5.75))
invoice.add_item(Item.new("Товар 3", 7.43))
invoice.add_item(Item.new("Товар 1", 12.00)) 
invoice.display
