post "/round" do
  @deck_id = Deck.find_by_name(params[:name]).id
  @cards = Card.where(deck_id: @deck_id)
  return "cheese"
  erb :round
end

get "/round/:deck_id" do
  session[:round_id] = Round.create(user_id: session[:user_id]).id
  @cards = Card.create_deck(params[:deck_id])
  session[:cards] = @cards
  session[:num] = 0
  @card = current_card
  session[:correctness] = Array.new
  erb :rounds
end
