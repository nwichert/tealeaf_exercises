class GoodDog
	attr_accessor :name, :height, :weight

	def initialize(n, h, w)
		@name = n
		@height = h
		@weight = w
	end

	def speak
		"#{name} says arrrf!"
	end

	def change_info(n, h, w)
		self.name = name
		self.height = height
		self.weight = weight
	end

	def info
		"#{self.name} weighs #{self.weight} and is #{self.height} tall."
	end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info

sparky.change_info('Spartacus', '53 lbs', '36 inches')
puts sparky.info