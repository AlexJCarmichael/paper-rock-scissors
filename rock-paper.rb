
def greeter
  puts "Lets play Paper-Rock-Scissors."
  puts "What will you throw?"
end

def verify_choice
  choice = gets.chomp.upcase
  while choice != "ROCK" &&
        choice != "PAPER" &&
        choice != "SCISSORS"
    puts "Please make a valid choice of rock, paper, or scissors."
    choice = gets.chomp.upcase
  end
  return choice
end

def play_again
  puts "Do you want to play again? (Y/N)"
  again = gets.chomp.upcase
  if again == "Y"
    start
  else
    puts "Good-bye"
  end
end

def start
  greeter
  choice = verify_choice
  new_game = RoShamBo.new(choice)
  new_game.play_ro_sham
  play_again
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
end

start
