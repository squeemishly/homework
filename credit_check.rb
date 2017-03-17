require 'pry'
card_number = "4929735477250543"
card_number_saved = card_number
card_numbers_added = nil
check_digit = nil
valid = false

def split_long_number(number)
  number.split('').map(&:to_i)
end

def multiply_by_two(cc_number)
  cc_number = split_long_number(cc_number).reverse
  cc_number.each_with_index do |number, index|
    if index.even?
      cc_number[index] = cc_number[index] * 2
      if cc_number[index] > 9
        cc_number[index] = split_long_number(cc_number[index].to_s)
        cc_number[index] = cc_number[index][0]+cc_number[index][1]
      end
    end
  end
end

def card_number_total(cc_number)
  total = 0
  cc_number.each do |number|
    total = total + number
  end
  total
end

def find_check_digit (cc_number, card_numbers_added)
  total = 0
  total_ones_digit = nil
  check_digit = nil
  total_ones_digit = split_long_number(card_numbers_added.to_s)
  check_digit = 10 - total_ones_digit[1]
  check_digit
end

def evenly_divisible_by_ten(number_1, number_2)
  card_total = number_1 + number_2
  if card_total % 10 == 0
    puts "This is a valid card number!"
  else
    puts "Nope. Try again!"
  end
end

card_number = multiply_by_two(card_number)
p card_number

card_numbers_added = card_number_total(card_number)
p card_numbers_added

check_digit = find_check_digit(card_number, card_numbers_added)
p check_digit

evenly_divisible_by_ten(card_numbers_added, check_digit)
p card_number_saved