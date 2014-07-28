# Pseudo Code


# draw a board

# assign player to "x"
# assign computer to "o"


# loop until a winner or all squares are taken
# 	player 1 picks an empty square
# 	check for a winner
# 	player 2 picks an empty square
# 	check for a winner
# 	player 1 picks an empty square
# 	check for a winner
# 	player 2 picks an empty square

# if there's a winner
# 	show the winner
# or else
# 	puts it's a tie

def initialize_board
	b = {}
	(1..9).each {|position| b[position] = ''}
	b
end

def draw_board(b)
	system 'clear'
	puts " #{b[1]} | #{b[2]} | #{b[3]} "
	puts "-----------"
	puts " #{b[4]} | #{b[5]} | #{b[6]} "
	puts "-----------"
	puts " #{b[7]} | #{b[8]} | #{b[9]} "
end

def empty_positions(b)
	b.select {|k, v| v == ''}.keys
end

def player_picks_square(b)
	puts "Pick a square (1 - 9):"
	position = gets.chomp.to_i
	b[position] = 'x'
end

def computer_picks_square(b)
	position = empty_positions(b).sample
	b[position] = 'o'
end

def check_winner(b)
	winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
	winning_lines.each do |line|
		if b[line[0]] == 'x' and b[line[1]] == 'x' and b[line[2]] = 'x'
			return 'Player'
		elsif b[line[0]] == 'o' and b[line[1]] == 'o' and b[line[2]] = 'o'
			return 'Computer'
		else
			return nil
		end
	end
end

board = initialize_board
draw_board(board)

begin
	player_picks_square(board)
	computer_picks_square(board)
	draw_board(board)
	winner = check_winner(board)
end until winner || empty_positions(board).empty?

if winner
	puts "#{winner} won!"
else
	puts "It's a tie!"
end

