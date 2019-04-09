def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
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
 card_one = deal_card
 card_two = deal_card
 card_total = card_one + card_two
 display_card_total(card_total)
 card_total
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input 
  if user_input == 'h'
    current_card_total += deal_card
    elsif user_input == 's'
    card_total
    else 
      invalid_command
      prompt_user
      current_card_total
end
end 

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  until card_total > 21
  hit?(current_card_total)
  display_card_total(card_total) 
end_game(card_total)
end
end
    
