def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_num)
  puts "Your cards add up to #{card_num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card_1 = deal_card()
  deal_card_2 = deal_card()

  display_card_total(deal_card_1 + deal_card_2)
  deal_card_1 + deal_card_2
end

def hit?(num)
  total = num

  prompt_user()
  user_input = get_user_input()

  if user_input == "h"
    total += deal_card()
  end

  total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)
end
