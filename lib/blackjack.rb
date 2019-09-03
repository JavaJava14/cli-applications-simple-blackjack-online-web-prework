def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # rand(1..11) works too
  card = [1,2,3,4,5,6,7,8,9,10,11]
      while card[0] > 1 && card[10] < 11 do
        return card.sample
      end
      card.sample
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(card_total)
  valid_inputs = ["h", "s"]

  prompt_user
  user_input = get_user_input
   if user_input == "h"
     card_total += deal_card
   elsif user_input == "s"
     card_total
   else
     invalid_command
     hit?(card_total)
   end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
