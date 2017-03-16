count = (1..1000).to_a
count.each do |i|
    puts case 
        when i%3==0 then "Fizz"
        when i%5==0 then "Buzz" 
        when i%7==0 then "Super"
        else i
    end
end