def calculate_total(cards)
	arr = cards.map{|e| e[1] }

	total = 0
	arr.each do |value|
		if value == "A"
			total += 11
		elsif value.to_i == 0
			total += 10
		else
			total += value.to_i
		end
	end

	# Correct for Aces
	arr.select{|e| e == "A"}.count.times do
		total -= 10 if total >21
	end

	total
end

# Begin Game!

puts "Welcome to the Blackjack table!"

# Present the Deck

suites = ['Queen', 'Clubs', 'Spades', 'Diamonds']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

deck = suites.product(cards)
deck.shuffle!

# Deal the cards
mycards = []
dealercards = []

# Initial deal
mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

dealertotal = calculate_total(dealercards)
mytotal = calculate_total(mycards)

# Show the cards
puts "Dealer flops #{dealercards[0]} and #{dealercards[1]} for a total of #{dealertotal}"
puts "You flopped #{mycards[0]} and #{mycards[1]} for a total of #{mytotal}"
puts ""

# Gambler Play (Hit or Stay)
if mytotal == 21
	puts "Congratulations, you hit blackjack!"
	exit  # exit program
end

while mytotal < 21
	puts "Gambler, would you like to 1) hit or 2) stay?"
	hit_or_stay = gets.chomp

	if !['1', '2'].include?(hit_or_stay)
		puts "Sorry, you must enter 1 or 2"
		next	# moves to next loop
	end

	if hit_or_stay == "2"
		puts "You chose to stay, it is now the Dealer's turn"
		break
	end

	# Gambler choses to hit
	new_card = deck.pop
	puts "Next card in the flop: #{new_card}"
	mycards << new_card
	mytotal = calculate_total(mycards)
	puts "You now have #{mytotal}"

	if mytotal == 21
		puts "Congratulations, you hit blackjack!"
		exit
	elsif mytotal > 21
		puts "Sorry, you busted."
		exit
	end
end


# Dealer Play (Hit < 17 or Stay > 17)
if dealertotal == 21
	puts "Sorry the dealer hit blackjack, you lose."
	exit
end

while dealertotal < 17
	new_card = deck.pop
	puts "Dealer flopped #{new_card}"
	dealercards << new_card
	dealertotal = calculate_total(dealercards)
	puts "Dealer now has #{dealertotal}"

	if dealertotal == 21
		puts "Sorry you lose, the Dealer flopped Blackjack."
		exit
	elsif dealertotal > 21
		puts "Congratulations, the Dealer busted and you win!"
		exit
	end
end		

# Results
puts "Dealer's final hand:"
dealercards.each do |card|
	puts "#{card}"
end
puts ""

puts "Gambler's final hand:"
mycards.each do |card|
	puts "#{card}"
end
puts ""

if dealertotal > mytotal
	puts "Sorry, the Dealer wins"
elsif dealertotal < mytotal
	puts "Congratulations, you win!"
else
	puts "Its a push"
end

exit



























