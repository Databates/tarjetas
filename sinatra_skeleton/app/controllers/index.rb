enable :sessions
# http://www.sinatrarb.com/faq.html#sessions
get '/' do
  # @decks = Deck.all
  erb :index
end

<<<<<<< HEAD
post "/round" do
  @deck_id = Deck.find_by_name(params[:name]).id
  @cards = Card.where(deck_id: @deck_id)
  return @cards.first.question
  erb :round
end
=======
# jquery routing ---- user login



#

#send card to module
  get '/send_card' do
    @cards.shuffle!
    card = @cards.pop
#    erb :send_card , locals: { card:}
    return "swiss"
  end


# post--- r
#post '/user_guess' do


#erb: display_correct
#end



#increment score
# methods in card class to evaluate our 50 questoinsw


#def evaluate_correct_response

# card = Card.where(card_id: )


#end



>>>>>>> 9f3cfb982d557769a82d1df14de9e87fbde8e672
