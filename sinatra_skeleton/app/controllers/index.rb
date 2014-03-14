enable :sessions
exi
# http://www.sinatrarb.com/faq.html#sessions
get '/' do
  # @decks = Deck.all
  erb :index
end

post "/round" do
  @deck_id = Deck.find_by_name(params[:name]).id
  @cards = Card.where(deck_id: @deck_id)
  return "cheese"
  erb :round
end
