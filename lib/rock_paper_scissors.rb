class RockPaperScissors

  def initialize  
    @user_wins = 0
    @computer_wins = 0
    @options = ['rock', 'paper', 'scissors']
  end

  def play_game 

    loop {
    user_input = user_choice
    break if end_game?(user_input)
    next if valid_input?(user_choice)

    
    }

  end

  def get_input

  end

  def winner?(user_pick, computer_pick)

  end

  def computer_choice
  
  end

  def user_choice
    puts 'Rock paper or scissors?'
    user_input = gets.chomp.downcase
  end

  def end_game?(input)
    input == 'q'
  end

  def valid_input?(input)
    @options.include?(input)
  end

end