
require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hit1 = deal_card
  hit2 = deal_card
  card_total = hit1 + hit2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  
  if input == "s"
    card_total
  elsif input == "h"
    card_total += deal_card
  else
    invalid_command
    hit?(card_total)
  end
return card_total
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
## GUESSING GAME LAB

def run_guessing_game
  
  n = rand(6) + 1
  input = gets.chomp
  
  if n.to_s == input
    puts "You guessed the correct number!"
  else
    puts "Sorry! The computer guessed 6."
  end
  puts "Goodbye!"
  
end
