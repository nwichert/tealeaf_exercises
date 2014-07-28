def say(msg)
	puts "#{msg}"
end

say "Enter your first number here:"
num1 = gets.chomp

say "Enter your second number here:"
num2 = gets.chomp

say "1) Add 2) Subtract 3) Multiply 4) Divide"
operator = gets.chomp

if operator == '1'
	result = num1.to_i + num2.to_i
elsif operator == '2'
	result = num1.to_i - num2.to_i
elsif operator == '3'
	result = num1.to_i * num2.to_i
else operator == '4'
	result = num1.to_i / num2.to_i
end

puts "The answer is #{result}"

		