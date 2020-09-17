class Card
    attr_reader :card, :cards_display
    def initialize card
        @card = card
        cards = card.split('')
        @cards_display = cards.map do |
            represent_value|
                {cards: represent_value, hidden: true}
        end
    end
    def render 
        cards_display.each do |represent_value|
            if represent_value[:hidden]
                print "#"
            else
                print represent_value[:cards]
            end
        end
    end
end
list_of_cards = ["clubs", "diamonds", "hearts", "spades", "ace", "joker", "queen", "king", "jack", "clubs1", "diamonds1", "hearts1", "spades1", "ace1", "joker1", "queen1", "king1", "jack1", "clubs2", "diamonds2", "hearts2", "spades2", "ace2", "joker2", "queen2", "king2", "jack2", "clubs3", "diamonds3", "hearts3", "spades3", "ace3", "joker3", "queen3", "king3", "jack3", "clubs4", "diamonds4", "hearts4", "spades4", "ace4", "joker4", "queen4", "king4", "jack4"]
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
        puts "try again (d), or quit (q)"
        again = gets.chomp.downcase
        break if again  == "q"
    end
end