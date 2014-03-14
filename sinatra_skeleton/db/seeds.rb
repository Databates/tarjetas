require 'csv'  # => true

class Card
end

class Deck
  end

module Parser

  def self.parse(file, name)
    deck = Deck.create(:name => name)                                                                                                     # ~> NoMethodError: undefined method `create' for Deck:Class
    CSV.foreach(File.open(filename=File.dirname(__FILE__) + "/../db/#{file}"), :headers => true, :header_converters => :symbol) do |row|
      deck.cards << Card.create(:question => row[:question], :answer => row[:answer])
    end
  end
end

Parser.parse('state_capitals.csv', "state_capitals")



# old one
# File.open("#{APP_ROOT}/db/fixtures").readlines.each do |line|
#   Word.create(:word => line.chomp, :sorted_word => line.chomp.downcase.chars.sort.join)
# end

# ~> NoMethodError
# ~> undefined method `create' for Deck:Class
# ~>
# ~> /Users/apprentice/Desktop/Dropbox/tarjetas/sinatra_skeleton/db/seeds.rb:12:in `parse'
# ~> /Users/apprentice/Desktop/Dropbox/tarjetas/sinatra_skeleton/db/seeds.rb:19:in `<main>'
