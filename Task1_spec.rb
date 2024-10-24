require_relative 'Task1'

RSpec.describe '#product_odd_numbers' do
  it 'повертає добуток усіх непарних чисел у масиві' do
    expect(product_odd_numbers([1, 2, 3, 4, 5])).to eq(15)
  end

  it 'повертає 0, коли немає непарних чисел' do
    expect(product_odd_numbers([2, 4, 6])).to eq(0)
  end

  it 'повертає добуток одного непарного числа' do
    expect(product_odd_numbers([7])).to eq(7)
  end

  it 'повертає 0 для порожнього масиву' do
    expect(product_odd_numbers([])).to eq(0)
  end

  it 'обробляє від’ємні непарні числа' do
    expect(product_odd_numbers([-1, -3, 2, 4])).to eq(3)
  end
end
