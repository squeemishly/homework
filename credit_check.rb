card_number = "4929735477250543"
valid = false

def split_and_reverse (cc_number)
  cc_number = cc_number.split('').map(&:to_i)
  p cc_number
  cc_number = cc_number.reverse
end

def multiply_by_two(cc_number)
  cc_number.each_with_index do |number, index|
    if index.even?
      cc_number[index] = cc_number[index] * 2
      if cc_number[index] > 9
        cc_number[index] = cc_number[index].to_s
        cc_number[index] = cc_number[index].split('').map(&:to_i)
        cc_number[index] = cc_number[index][0]+cc_number[index][1]
      end
    else
      next
    end
  end
end

def find_check_digit (cc_number)
  total = 0
  total_ones_digit = nil
  check_digit = nil
  cc_number.each do |number|
    total = total + number
  end
  p total
  total_ones_digit = total.to_s
  total_ones_digit = total_ones_digit.split('').map(&:to_i)
  check_digit = 10 - total_ones_digit[1]
  p check_digit
end

card_number = split_and_reverse(card_number)
p card_number
multiply_by_two(card_number)
p card_number
find_check_digit(card_number)
