puts "Enter your credit card number: "
credit_card_number = gets.chomp
credit_card_number = credit_card_number.split('')
p credit_card_number
credit_card_number = credit_card_number.reverse
p credit_card_number

credit_card_number.each_with_index do |number, index|
    
    if index
        puts index
        number = number * 2

    else
        next
    end

end

p credit_card_number