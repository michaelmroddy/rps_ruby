# Rock, Paper, Scissors
num_wins = 0
num_losses = 0
while true

  puts "Your move: rock, paper, or scissors?"
  user_move = gets.chomp
  user_move=user_move.capitalize
  case user_move
  when "R","2"
    user_move="Rock"
  when "P","1"
    user_move="Paper"
  when "S","3"
    user_move="Scissors"
  when "Q", "Exit", "E"
    user_move = "Quit"
  else
    user_move=user_move
  end


  if user_move == "Quit"
    break
  end
  moves = ["Paper", "Rock", "Scissors"]
  user_move_num = moves.index(user_move)
  if !user_move_num
    puts "invalid selection"
  else
    #puts user_move_num
    computer_move_num = rand(3)
    #puts moves[computer_move_num]
    #puts computer_move_num
    if user_move_num == computer_move_num
      puts "It's a tie!"
    elsif user_move_num-computer_move_num == -1 || user_move_num-computer_move_num == 2
      puts "You win"
      num_wins = num_wins+1
    else
     puts "You lose"
     num_losses = num_losses+1
    end
    puts "Wins: "+num_wins.to_s+" Losses: "+num_losses.to_s
  end
end
