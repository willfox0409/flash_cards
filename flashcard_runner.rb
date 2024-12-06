require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

card1 = Card.new("What is the name of the island in Jurassic Park?", "Isla Nublar", :Movies)
card2 = Card.new("What is the name of the Beatles' final album?", "Let it Be", :Music)
card3 = Card.new("Who played the hit-man Jules in Pulp Fiction?", "Samuel L. Jackson", :Movies)
card4 = Card.new("What is the capital city of Brazil?", "Brasilia", :Geography)
card5 = Card.new("What is the smallest US State?", "Rhode Island", :Geography)
card6 = Card.new("Who wrote the 1971 hit song, What's Going On?", "Marvin Gaye", :Music)

cards = [card1, card2, card3, card4, card5, card6]

deck = Deck.new(cards)

round = Round.new(deck)

def start_game(round)

    initial_card_count = round.deck.cards.size

    puts ""
    puts "Welcome! You're playing Will's Trivia with #{initial_card_count} cards."
    puts ""
    puts ">>>---- Game On! ----<<<"
    puts ""
    # round.deck.cards.each do |card|
        while !round.deck.cards.empty? do
            puts "This is card number #{round.turns.count + 1} out of #{initial_card_count}... 'cue Jeopardy theme song'..."
            puts ""
            puts round.current_card.question
            puts ""
            guess = gets.chomp
            round.take_turn(guess)
            puts ""
            puts round.turns.last.feedback 
            puts ""
        end
    puts "****** Game Over! ******\n"
    puts ""
    puts "You had #{round.number_correct} correct guesses out of #{round.deck.cards.size} for a total score of #{round.percent_correct}%."
    puts ""
    puts "#{category} - #{round.percent_correct_by_category(category)}% correct\n
    #{category} - #{round.percent_correct_by_category(category)}% correct\n
    #{category} - #{percent_correct_by_category(category)}% correct\n"
end

start_game(round)