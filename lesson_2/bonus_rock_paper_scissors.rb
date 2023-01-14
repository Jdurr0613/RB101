VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost!")
  else
    prompt("It's a tie.")
  end
end

def interpret_choice(player_choice)
  return 'rock' if player_choice.downcase.start_with?('r')
  return 'paper' if player_choice.downcase.start_with?('p')
  return 'scissors' if player_choice.downcase.start_with?('sc')
  return 'lizard' if player_choice.downcase.start_with?('l')
  return 'spock' if player_choice.downcase.start_with?('sp')
end

score = { player: 0,
          computer: 0,
          ties: 0 }

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    choice = interpret_choice(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That is not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  if win?(choice, computer_choice)
    score[:player] += 1
  elsif win?(computer_choice, choice)
    score[:computer] += 1
  else
    score[:ties] += 1
  end

  games = score[:player] + score[:computer] + score[:ties]

  prompt("You chose #{choice}, the computer chose #{computer_choice}.")
  display_results(choice, computer_choice)
  prompt("You have played #{games} game(s).")
  prompt("The current score is:")
  prompt("You: #{score[:player]} Computer: #{score[:computer]} \
Ties: #{score[:ties]}")

  if score[:player] == 3
    prompt("You have won 3 times! You are the grand winner!")
    break
  elsif score[:computer] == 3
    prompt("The computer has won 3 times and is declared the grand winner!")
    prompt("Better luck next time!")
    break
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
