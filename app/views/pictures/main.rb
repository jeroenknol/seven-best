require_relative "car.rb"

cool_car = Car.new("Volkswagen", "Polo", "2")
race_car = Car.new("ferrari", "1", "10")
old_car = Car.new("Skoda", "Fabia")

cool_car.print_details
race_car.print_details
old_car.print_details

puts "let's paint this"

cool_car.paint_job("green")
race_car.paint_job("blue")
old_car.paint_job("black")

cool_car.print_details
race_car.print_details
old_car.print_details

puts "EXCERSISE 2 ****************\n\n"

puts "Before we start driving, let's see... the cool_car has #{cool_car.fuel} fuel at this moment."

## check fuel
if cool_car.refuel?
  puts "How much fuel would you like?"
  amount = gets.chomp.to_i
  cool_car.refuel(amount)
end

## start driving
if cool_car.refuel?
  amount = gets.chomp.to_i
  cool_car.refuel(amount)

  puts "Let's take the cool_car for a spin, how far will you drive?"
  amount = gets.chomp.to_i
  cool_car.drive(amount)

  puts "that was nice, but your fuel level is now #{cool_car.fuel}"

else
  puts "Let's take the cool_car for a spin, how far will you drive?"
  amount = gets.chomp.to_i
  cool_car.drive(amount)

  puts "that was nice, but your fuel level is now #{cool_car.fuel}"
end
