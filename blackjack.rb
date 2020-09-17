class Card
    attr_reader :card, :cards_display
    def initialize card
        @card = card
        cards = card.split('')
        @cards_display = card.map do |
            represent_value|
                {cards: represent_value, hidden: true}
        end
    end
    def render 
        cards_display.each do |represent_value|
            if represent_value[:hidden]
                print "test please work"
            else
                print represent_value[:cards]
            end
        end
    end
end
list_of_cards = ["clubs", "diamonds", "hearts", "spades", "ace", "joker", "queen", "king", "jack"]
card = list_of_cards.sample
p card
puts "Welcome to Blackjack, guess the card!"
puts "The length of the cards name is #{card.length}"
current_card = Card.new card
loop do
    current_card.render
    input = gets.chomp
    the_right_card = current_card.card.split('')
    if input == current_card.card
        puts "This is the correct card!"
        break
    else
        puts "Wrong, try again"
        puts "deal again (d), or quit (q)"
        again = gets.chomp.downcase
        break if again  == "q"
    end
end