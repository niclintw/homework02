# Homework02 Rock-Paper-Scissors game

# Define Function to Get User Input ------------------------
def choose_user_input
  begin
    puts 'Please choose one of the following:'
    puts '  R ==> Rock'
    puts '  P ==> Paper'
    puts '  S ==> Scissors'
    user_input = gets.chomp.upcase
  end while !['R', 'P', 'S'].include?(user_input)
  user_input
end

# Define Function to Get Computer Input --------------------
def random_computer_input
  ['R', 'S', 'P'].shuffle!.last
end

# Define Function to Check who win! ------------------------
def check_who_win(user_input, computer_input)
  if user_input == computer_input
    'Haha! It is draw! You can try again!'
  elsif user_input == 'R'
    if computer_input == 'S'
      'Wow! Rock smashes Scissors! You Win!'
    elsif computer_input == 'P'
      'Oh! Paper covers Rock! You Lose!'
    end
  elsif user_input == 'P'
    if computer_input == 'R'
      'Wow! Paper covers Rock! You Win!'
    elsif computer_input == 'S'
      'Oh! scissors cuts Paper! You Lose!'
    end
  elsif user_input == 'S'
    if computer_input == 'P'
      'Wow! Scissors cuts Paper! You Win!'
    elsif computer_input == 'R'
      'Oh! Rock smashes Scissors! You Lose!'
    end
  end
end

# Define Function to Transfer input to string !-------------
def transfer_input_string(input)
  gestures = {
    'R' => 'Rock',
    'P' => 'Paper',
    'S' => 'Scissors'
  }
  gestures[input]
end

# Define Function to Print out the result! -----------------
def print_result(user_input, computer_input, who_win)
  puts ''
  puts '================================================='
  puts ''
  puts "You choose: #{transfer_input_string(user_input)}"
  puts "The computer chooses: #{transfer_input_string(computer_input)}"
  puts "***** #{who_win} ******"
  puts ''
  puts '================================================='
  puts ''
end

# Main Program !!-------------------------------------------
begin
  system 'clear'

  puts ''
  puts '*************************************************'
  puts '*                                               *'
  puts '*      Welcome to Rock Paper Scissors!!!        *'
  puts '*                                               *'
  puts '*************************************************'
  puts ''

  user_input = choose_user_input

  computer_input = random_computer_input

  who_win = check_who_win(user_input, computer_input)

  print_result(user_input, computer_input, who_win)

  # Play again?---------------------------------------
  begin
    puts 'Play Again?: Y / N'
    continue = gets.chomp.upcase
  end while !['Y', 'N'].include?(continue)

end while continue != 'N'
# if the answer is "N", break and print "Good Bye!"
system 'clear'
puts ''
puts 'Good Bye! Thanks for playing!'
puts ''
puts '======================================================'
puts ''
