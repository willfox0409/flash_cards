require 'pry'
require './lib/card'
require './lib/deck'
require './lib/round'

RSpec.describe Round do 
    before(:each) do 
        @card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        @card2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        @card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        @cards = [@card1, @card2, @card3]
        @deck = Deck.new(@cards) 
        @round = Round.new(@deck)
    end

    it 'exists' do
        expect(@round).to be_a(Round)
        binding.pry
    end
end