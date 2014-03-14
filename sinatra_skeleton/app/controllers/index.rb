enable :sessions

# http://www.sinatrarb.com/faq.html#sessions
# get '/foo' do
#   session[:message] = 'Hello World!'
#   redirect to('/bar')
# end

# get '/bar' do
#   session[:message]   # => 'Hello World!'
# end

get '/' do
  # Look in app/views/index.erb
  @decks = Deck.all #show all decks on main page
  erb :index
end

get '/round/:deck_id' do
    @deck = Deck.find(params[:deck_id])
    @round = Round.create(deck_id: params[:deck_id], user_id: session[:user_id])  #not sure if this is correct!!!
     # erb : round
end

get '/round/:card_id' do
  @card = Card.find(params[:card_id].to_i)
end

# get '/round/:title'

# end

# get '/round/:deck_id'
#     Card.create(params[:question], params[:answer])



# get '/decks/new_round/:deck_id' do
#   @user = current_user
#   @deck = Deck.find(params[:deck_id])

#   @round = Round.create({
#     user_id: current_user.id,
#     deck_id: @deck.id
#     })
# end




#notes

# get /state_capital

# round.create increment

# round table  - give me count of user_id of bob

# access all card
# create deck.cards
# each  - create div for every card



# get /round/:title


# submit

# get submit method

# instantiate a round
# round gets name of deck_id and user_id

# get 10 cards out one at a time deck.cards.push.

# user param[:id]
