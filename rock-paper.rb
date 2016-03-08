# class Game
#   attr_accessor :player_one_choice, :computer
# end
#
# game = Game.new
# game.play
# Normal Mode
# The game should ask player 1 for their choice of "rock", "paper", or "scissors". (use gets)
# The game should then randomly select the computer's selection
# The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
# Rock beats scissors
# Paper beats Rock
# Scissors beats Paper

class RoShamBo
  def initialize (choice)
    @choice = choice
    @computer_choice = ["ROCK", "PAPER", "SCISSORS"][(rand(0..2))]
  end
  def play_ro_sham
    puts "Player chose #{@choice}. Computer chose #{@computer_choice}."
  end
end

puts "Lets play Paper-Rock-Scissors."

choice = gets.chomp.upcase

# unless choice == "ROCK" || "PAPER" || "SCISSORS"
#   puts "Please make a valid choice of rock, paper, or scissors."
#   choice = gets.chomp.upcase
# end

new_game = RoShamBo.new(choice)
new_game.play_ro_sham
