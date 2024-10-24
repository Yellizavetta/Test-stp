def product_odd_numbers(array)
  result = 1
  has_odd = false

  array.each do |number|
    if number.odd?
      result *= number
      has_odd = true
    end
  end

  has_odd ? result : 0
end

numbers_1 = [1, 2, 3, 4, 5, 6]
numbers_2 = [11, -2, 7, -5, 12, 6]
numbers_3 = [31, 0, -1, 6, 100, 5]
puts "1) Масив: #{numbers_1} - Добуток непарних чисел: #{product_odd_numbers(numbers_1)}"
puts "2) Масив: #{numbers_2} - Добуток непарних чисел: #{product_odd_numbers(numbers_2)}"
puts "3) Масив: #{numbers_3} - Добуток непарних чисел: #{product_odd_numbers(numbers_3)}"