require_relative 'Task2'

RSpec.describe Invoice do
  before do
    @invoice = Invoice.new
  end

  it 'додає товар з позитивною ціною' do
    item = Item.new("Товар 1", 10.00)
    @invoice.add_item(item)
    expect(@invoice.total_cost).to eq(10.00)
  end

  it 'виводить повідомлення при спробі додати товар з від’ємною ціною' do
    expect { Item.new("Товар 1", -5.00) }.to output("Ціна не може бути від'ємною\n").to_stdout
  end

  it 'перезаписує ціну існуючого товару' do
    item1 = Item.new("Товар 1", 10.00)
    item2 = Item.new("Товар 1", 15.00) 
    @invoice.add_item(item1)
    @invoice.add_item(item2)
    expect(@invoice.total_cost).to eq(15.00)
  end

  it 'додає кілька різних товарів' do
    item1 = Item.new("Товар 1", 10.00)
    item2 = Item.new("Товар 2", 35.00)
    @invoice.add_item(item1)
    @invoice.add_item(item2)
    expect(@invoice.total_cost).to eq(45.00)
  end

   it 'повертає 0, якщо рахунок порожній' do
    expect(@invoice.total_cost).to eq(0)
  end
end
