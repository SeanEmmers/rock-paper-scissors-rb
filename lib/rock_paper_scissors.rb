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

  def winner?(u_p)
    c_p = computer_choice()
    return winning_action() if u_p == 'rock' && c_p == 'scissors'
    return winning_action() if u_p == 'paper' && c_p == 'rock'
    return winning_action() if u_p == 'scissors' && c_p == 'paper'
    return 'Draw' if u_p == c_p
    losing_action()
  end

  def winning_action
    @user_wins += 1
    return 'You win!'
  end

  def losing_action
    @computer_wins += 1
    return 'You Loose'
  end

  def computer_choice
    choice = rand(0..2)
    return @options[choice]
  end

  def user_choice
    puts 'Rock paper or scissors?'
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