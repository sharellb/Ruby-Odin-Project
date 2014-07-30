#mastermind

puts "Welcome to Mastermind! You will be playing against the computer in this game."
puts "The computer will choose the order of 4 pegs of 6 different colors (white, yellow, orange, purple, blue, and green)."
puts "It's up to you to figure out the order and color of the pegs. You get 12 turns."
puts "Don't worry. The computer will let you know if you have a peg in the right place or one of the right color...it just won't tell you which peg"
puts "Good luck!"
puts " "
colors = ['w','y','o','p','b','g']

def pick_pegs(choices) 
	$pegs = []
	4.times do
		peg = choices.sample
		$pegs.push(peg)
	end
end

$turns = 0
$game = 0


def player_guess
	puts "Put in your guess separated by commas. Choose from w, y, o, p, b, or g."
	$guess = gets.chomp.split(",")
	if $guess.length != 4
		puts "You didn't put in four pegs. Try again!"
		player_guess
	end
	$turns += 1
end


def end_game
	if $turns == 12
		puts "Sorry you're all out of turns :("
		$game = 1
	elsif $guess == $pegs
		puts "YOU WON!"
		$game = 1
	end
end

def feedback
	correct = 0
	right_color = 0
	for i in 0..3
		if $pegs[i] == $guess[i]
			correct = correct + 1
		elsif $guess.include? $pegs[i]
			right_color = right_color + 1
		end
	end
	puts "You have #{correct} in the right place."
	puts "You have #{right_color} of the right color but not in the correct place."
end

pick_pegs(colors)

until $game == 1
	player_guess
	feedback
	end_game
end


