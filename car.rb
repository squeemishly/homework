require 'pry'

class Car 
  attr_accessor :color, :wheel_count
  def initialize(color, wheel_count)
    @color = color
    @wheel_count = wheel_count
    @start = true
  end
  
  def horn
    "BEEEEEP!"
  end
  
  def drive(distance)
    "I am driving #{distance} miles."
  end

  def report_color
    "I am #{color}"
  end
  
  
  def start
    if @start == true
      @start = false
      "starting up!"
    else
      "Bzzt! Nice try though!"
    end
  end

end

my_car = Car.new("red", 4)
puts my_car.horn
puts my_car.drive(12)
my_car.color = "purple"
puts my_car.report_color
my_car.wheel_count = 18
puts "This sweet ride has #{my_car.wheel_count} wheels!"

my_second_car = Car.new("blue", 2)
puts "This sweet ride has #{my_second_car.wheel_count} wheels!"
puts my_second_car.start
puts my_car.start
puts my_second_car.start