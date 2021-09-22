class RockPaperScissors

  def initialize  
    @user_wins = 0
    @computer_wins = 0
    @options = ['rock', 'paper', 'scissors']
  end

  def play_game 

    loop {
      user_input = user_choice()
      break if end_game?(user_input)
      next unless valid_input?(user_input)
      puts "#{winner?(user_input)}"
    }
    
    return end_game_message()
  end

  private 

  def winner?(u_c)
    c_c = computer_choice()
    return winning_action(c_c) if u_c == 'rock' && c_c == 'scissors'
    return winning_action(c_c) if u_c == 'paper' && c_c == 'rock'
    return winning_action(c_c) if u_c == 'scissors' && c_c == 'paper'
    return "\nDraw!" if u_c == c_c
    losing_action(c_c)
  end

  def winning_action(computer_choice)
    @user_wins += 1
    return "\nYou Win!\nComputer Picked: #{computer_choice.capitalize}"
  end

  def losing_action(computer_choice)
    @computer_wins += 1
    return "\nYou Lose\nComputer Picked: #{computer_choice.capitalize}"
  end

  def computer_choice
    choice = rand(0..2)
    return @options[choice]
  end

  def user_choice
    puts "\nRock Paper or Scissors?"
    return gets.chomp.downcase.strip
  end

  def end_game?(input)
    input == 'q'
  end

  def valid_input?(input)
    @options.include?(input)
  end

  def end_game_message
    puts "Thank you for playing!\n You won: #{@user_wins} times\n Computer won: #{@computer_wins} times"
  end

end