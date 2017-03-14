ready_to_quit = false
goodbye = 0
puts "HELLO, THIS IS A GROCERY STORE!"

input = gets.chomp

until ready_to_quit
  if input == ""
      puts "HELLO?!"
    elsif input == "GOODBYE!"
        goodbye += 1
        if goodbye == 1
            puts "Can I do anything else for you?"
        else
            ready_to_quit = true
            break
        end
    elsif input == input.upcase
        puts "No! This isn't a pet store!"
    else
        puts "I'm having a hard time hearin you!"
    end
    input = gets.chomp
end

puts "THANK YOU FOR CALLING!"