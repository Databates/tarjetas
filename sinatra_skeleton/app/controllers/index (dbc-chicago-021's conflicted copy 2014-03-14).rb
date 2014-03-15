enable :sessions
# http://www.sinatrarb.com/faq.html#sessions
get '/' do
  # @decks = Deck.all
  erb :index
end

# jquery routing ---- user login




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



