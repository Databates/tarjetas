require 'csv'  # => true


module Parser

  def self.parse(file, name)
    deck = Deck.create(:name => name)                                                                                                     # ~> NoMethodError: undefined method `create' for Deck:Class
    CSV.foreach(File.open(filename=File.dirname(__FILE__) + "/../db/#{file}"), :headers => true, :header_converters => :symbol) do |row|
      deck.cards << Card.create(:question => row[:question], :answer => row[:answer])
    end
  end
end

Parser.parse('state_capitals.csv', "state_capitals")
