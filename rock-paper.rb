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
def greeter
  puts "Lets play Paper-Rock-Scissors."
end

def verify_choice (choice)
  unless choice == "ROCK" ||
        choice == "PAPER" ||
        choice == "SCISSORS"
    puts "Please make a valid choice of rock, paper, or scissors."
    choice = gets.chomp.upcase
  end
end

def play_again
  puts "Do you want to play again? (Y/N)"
  again = gets.chomp.upcase
  if again == "Y"
    greeter
    choice = gets.chomp.upcase
    verify_choice (choice)
    new_game = RoShamBo.new(choice)
    new_game.play_ro_sham
    play_again
  else
    puts "Good-bye"
  end
end

class RoShamBo
  def initialize (choice)
    @choice = choice
    @computer_choice = ["ROCK", "PAPER", "SCISSORS"][(rand(0..2))]
  end
  def play_ro_sham
    if @choice == "ROCK"
      rock_logic(@computer_choice)
    elsif @choice == "PAPER"
      paper_logic(@computer_choice)
    else
      scissors_logic(@computer_choice)
    end
  end
  def rock_logic(c_choice)
    if c_choice == "ROCK"
      puts "Player: Rock vs Computer: Rock ---- Tie."
    elsif c_choice == "PAPER"
      puts "Player: Rock vs Computer: Paper ---- Computer wins..."
    else
      puts "Player: Rock vs Computer: Scissors ---- Player wins!"
    end
  end
  def paper_logic(c_choice)
    if c_choice == "ROCK"
      puts "Player: Paper vs Computer: Rock ---- Player wins!"
    elsif c_choice == "PAPER"
      puts "Player: Paper vs Computer: Paper ---- Tie."
    else
      puts "Player: Paper vs Computer: Scissors ---- Computer wins..."
    end
  end
  def scissors_logic(c_choice)
    if c_choice == "ROCK"
      puts "Player: Scissors vs Computer: Rock ---- Computer wins..."
    elsif c_choice == "PAPER"
      puts "Player: Scissors vs Computer: Paper ---- Player wins!"
    else
      puts "Player: Scissors vs Computer: Scissors ---- Tie."
    end
  end
  # puts "Do you wish to play again? (Y/N)"
  # again = gets.chomp.upcase
  # if again == "Y"
  #
  # else
  #   puts "Good-bye"
end

greeter
choice = gets.chomp.upcase
verify_choice (choice)
new_game = RoShamBo.new(choice)
new_game.play_ro_sham
play_again
