# car.rb speed / accelerator / break / break

class MyCar
	attr_accessor :color
	attr_reader :year

	def self.gas_mileage(gallons, miles)
		puts "#{miles / gallons} miles per gallon of gas"
	end

	def spray_paint(color)
		self.color = color
		puts "Your new #{color} paint job looks great! Lets take this animal for a ride!"
	end

	def initialize(year, model, color)
		@year = year
		@model = model
		@color = color
		@current_speed = 0
	end

	def accelerate(number)
		@current_speed += number
		puts "You've accelerated #{number} mph"
	end

	def brake(number)
		@current_speed -= number
		puts "Oh shit, the police are up there, break #{number} mph"
	end

	def current_speed
		puts "You are now going #{@current_speed} mph"
	end

	def kill_engine
		@current_speed = 0
		puts "Lets park this beast!"
	end

	def to_s
		"My car is a #{self.color}, #{self.year}, and a #{@model}"
	end
end

my_car = MyCar.new("2010", "Mazda 6 Touring", "Black")
puts my_car




