enable :sessions
# http://www.sinatrarb.com/faq.html#sessions
get '/' do
  # @decks = Deck.all
  erb :index
end

post "/round" do
  @deck = Deck.find_by_name(params[:name])
  @cards = Card.where(deck_id: @deck.id)
  @round = Round.create(deck_id: @deck.id)
  erb :round
end
