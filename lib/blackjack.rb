require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card
  total += deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  seleccion = get_user_input
  if seleccion == 'h'
    total += deal_card
  elsif seleccion == 's'
    return total
  else
    invalid_command
    prompt_user
  end
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round
  until current_total > 21 do
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
end_game(current_total)
end
