require 'pry'
card_number = "5541808923795240"
card_number_modified = card_number
valid = false

def split_long_number(number)
  number.split('').map(&:to_i)
end

def multiply_by_two(cc_number)
  cc_number = split_long_number(cc_number).reverse
  cc_number.each_with_index do |number, index|
    if index.odd?
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

def evenly_divisible_by_ten(cc_number)
  cc_number = multiply_by_two(cc_number)
  cc_number = card_number_total(cc_number)
  if cc_number % 10 == 0
    puts "This is a valid card number!"
  else
    puts "Nope. Try again!"
  end
end

evenly_divisible_by_ten(card_number_modified)
