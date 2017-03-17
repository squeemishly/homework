card_number = "4929735477250543"
valid = false

def split_and_reverse (cc_number)
  cc_number = cc_number.split('').map(&:to_i)
  p cc_number
  cc_number = cc_number.reverse
end

def multiply_by_two(cc_number)
  cc_number.each_with_index do |number, index|
    if index == 0
      next
    elsif index.even?
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

card_number = split_and_reverse(card_number)
p card_number
multiply_by_two(card_number)
p card_number
