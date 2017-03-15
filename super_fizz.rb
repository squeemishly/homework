for i in 1..1000 do

    if i%7==0 && i%5==0 && i%3==0
        puts "SuperFizzBuzz"
    elsif i%7==0 && i%3==0
        puts "SuperFizz"
    elsif i%7==0 && i%5==0
        puts "SuperBuzz"
    elsif i%3==0 && i%5==0
        puts "FizzBuzz"
    elsif i%3==0
        puts "Fizz"
    elsif i%5==0
        puts "Buzz"
    elsif i%7==0
        puts "Super"
    else
        puts i
    end

end