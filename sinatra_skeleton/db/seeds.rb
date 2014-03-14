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



# IN CASE THIS DOES NOT WORK DO THIS:

# Deck.create(name: "State Capitals")

# Card.create(deck_id: 2, question: "What is the capital of Illinois", answer: "Springfield" )
# Card.create(deck_id: 2, question: "What is the capital of Missouri", answer: "Jefferson City" )
# Card.create(deck_id: 2, question: "What is the capital of Indiana", answer: "Indianapolis" )
# Card.create(deck_id: 2, question: "What is the capital of Ohio", answer: "Columbus" )
# Card.create(deck_id: 2, question: "What is the capital of Rhode Island", answer: "Providence" )
# Card.create(deck_id: 2, question: "What is the capital of New York", answer: "Albany" )
# Card.create(deck_id: 2, question: "What is the capital of New Jersey", answer: "Trenton" )
# Card.create(deck_id: 2, question: "What is the capital of North Carolina", answer: "Raleigh" )
# Card.create(deck_id: 2, question: "What is the capital of South Carolina", answer: "Columbia" )
# Card.create(deck_id: 2, question: "What is the capital of California", answer: "Sacramento" )
# Card.create(deck_id: 2, question: "What is the capital of Nevada", answer: "Reno" )
# Card.create(deck_id: 2, question: "What is the capital of Utah", answer: "Salt Lake City" )
# Card.create(deck_id: 2, question: "What is the capital of Idaho", answer: "Boise" )
# Card.create(deck_id: 2, question: "What is the capital of Montana", answer: "Helena" )
# Card.create(deck_id: 2, question: "What is the capital of Wyoming", answer: "Cheyenne" )
# Card.create(deck_id: 2, question: "What is the capital of Colorado", answer: "Denver" )
# Card.create(deck_id: 2, question: "What is the capital of New Mexico", answer: "Santa Fe" )
# Card.create(deck_id: 2, question: "What is the capital of Alabama", answer: "Montgomery" )
# Card.create(deck_id: 2, question: "What is the capital of Mississippi", answer: "Jackson" )
# Card.create(deck_id: 2, question: "What is the capital of Florida", answer: "Tallahassee" )
# Card.create(deck_id: 2, question: "What is the capital of Georgia", answer: "Atlanta" )
# Card.create(deck_id: 2, question: "What is the capital of Louisianna", answer: "Baton Rouge" )
# Card.create(deck_id: 2, question: "What is the capital of Texas", answer: "Austin" )
# Card.create(deck_id: 2, question: "What is the capital of Wisconsin", answer: "Madison" )
# Card.create(deck_id: 2, question: "What is the capital of Minnesota", answer: "St. Paul" )
# Card.create(deck_id: 2, question: "What is the capital of Michigan", answer: "Lansing" )
# Card.create(deck_id: 2, question: "What is the capital of Maine", answer: "Augusta" )
# Card.create(deck_id: 2, question: "What is the capital of Oregon", answer: "Salem" )
# Card.create(deck_id: 2, question: "What is the capital of Washington", answer: "Olympia" )
# Card.create(deck_id: 2, question: "What is the capital of Kansas", answer: "Topeka" )
# Card.create(deck_id: 2, question: "What is the capital of Nebraska", answer: "Lincoln" )
# Card.create(deck_id: 2, question: "What is the capital of South Dakota", answer: "Pierre" )
# Card.create(deck_id: 2, question: "What is the capital of North Dakota", answer: "Bismarck" )
# Card.create(deck_id: 2, question: "What is the capital of Minnesota", answer: "St. Paul" )
# Card.create(deck_id: 2, question: "What is the capital of Vermont", answer: "Montpelier" )
# Card.create(deck_id: 2, question: "What is the capital of New Hampshire", answer: "Concord" )
# Card.create(deck_id: 2, question: "What is the capital of Connecticut", answer: "Hartford" )
# Card.create(deck_id: 2, question: "What is the capital of Virginia", answer: "Richmond" )
# Card.create(deck_id: 2, question: "What is the capital of Kentucky", answer: "Frankfurt" )
# Card.create(deck_id: 2, question: "What is the capital of Tennessee", answer: "Nashville" )
# Card.create(deck_id: 2, question: "What is the capital of Arkansas", answer: "Little Rock" )
# Card.create(deck_id: 2, question: "What is the capital of Alaska", answer: "Juneau" )
# Card.create(deck_id: 2, question: "What is the capital of Hawaii", answer: "Honolulu" )
# Card.create(deck_id: 2, question: "What is the capital of Maryland", answer: "Annapolis" )
# Card.create(deck_id: 2, question: "What is the capital of Deleware", answer: "Dover" )
# Card.create(deck_id: 2, question: "What is the capital of Oklahoma ", answer: "Oklahoma City" )
# Card.create(deck_id: 2, question: "What is the capital of Pennsylvania", answer: "Harrisburg" )
# Card.create(deck_id: 2, question: "What is the capital of Arizona", answer: "Phoenix" )
# Card.create(deck_id: 2, question: "What is the capital of Massachusetts", answer: "Boston" )
# Card.create(deck_id: 2, question: "What is the capital of Iowa", answer: "Des Moines" )







# Deck.create(name: "State Capitals")

# Card.create(deck_id: 1, question: "What is the capital of Illinois", answer: "Springfield" )
# Card.create(deck_id: 1, question: "What is the capital of Missouri", answer: "Jefferson City" )
# Card.create(deck_id: 1, question: "What is the capital of Indiana", answer: "Indianapolis" )
# Card.create(deck_id: 1, question: "What is the capital of Ohio", answer: "Columbus" )
# Card.create(deck_id: 1, question: "What is the capital of Rhode Island", answer: "Providence" )
# Card.create(deck_id: 1, question: "What is the capital of New York", answer: "Albany" )
# Card.create(deck_id: 1, question: "What is the capital of New Jersey", answer: "Trenton" )
# Card.create(deck_id: 1, question: "What is the capital of North Carolina", answer: "Raleigh" )
# Card.create(deck_id: 1, question: "What is the capital of South Carolina", answer: "Columbia" )
# Card.create(deck_id: 1, question: "What is the capital of California", answer: "Sacramento" )
# Card.create(deck_id: 1, question: "What is the capital of Nevada", answer: "Reno" )
# Card.create(deck_id: 1, question: "What is the capital of Utah", answer: "Salt Lake City" )
# Card.create(deck_id: 1, question: "What is the capital of Idaho", answer: "Boise" )
# Card.create(deck_id: 1, question: "What is the capital of Montana", answer: "Helena" )
# Card.create(deck_id: 1, question: "What is the capital of Wyoming", answer: "Cheyenne" )
# Card.create(deck_id: 1, question: "What is the capital of Colorado", answer: "Denver" )
# Card.create(deck_id: 1, question: "What is the capital of New Mexico", answer: "Santa Fe" )
# Card.create(deck_id: 1, question: "What is the capital of Alabama", answer: "Montgomery" )
# Card.create(deck_id: 1, question: "What is the capital of Mississippi", answer: "Jackson" )
# Card.create(deck_id: 1, question: "What is the capital of Florida", answer: "Tallahassee" )
# Card.create(deck_id: 1, question: "What is the capital of Georgia", answer: "Atlanta" )
# Card.create(deck_id: 1, question: "What is the capital of Louisianna", answer: "Baton Rouge" )
# Card.create(deck_id: 1, question: "What is the capital of Texas", answer: "Austin" )
# Card.create(deck_id: 1, question: "What is the capital of Wisconsin", answer: "Madison" )
# Card.create(deck_id: 1, question: "What is the capital of Minnesota", answer: "St. Paul" )
# Card.create(deck_id: 1, question: "What is the capital of Michigan", answer: "Lansing" )
# Card.create(deck_id: 1, question: "What is the capital of Maine", answer: "Augusta" )
# Card.create(deck_id: 1, question: "What is the capital of Oregon", answer: "Salem" )
# Card.create(deck_id: 1, question: "What is the capital of Washington", answer: "Olympia" )
# Card.create(deck_id: 1, question: "What is the capital of Kansas", answer: "Topeka" )
# Card.create(deck_id: 1, question: "What is the capital of Nebraska", answer: "Lincoln" )
# Card.create(deck_id: 1, question: "What is the capital of South Dakota", answer: "Pierre" )
# Card.create(deck_id: 1, question: "What is the capital of North Dakota", answer: "Bismarck" )
# Card.create(deck_id: 1, question: "What is the capital of Minnesota", answer: "St. Paul" )
# Card.create(deck_id: 1, question: "What is the capital of Vermont", answer: "Montpelier" )
# Card.create(deck_id: 1, question: "What is the capital of New Hampshire", answer: "Concord" )
# Card.create(deck_id: 1, question: "What is the capital of Connecticut", answer: "Hartford" )
# Card.create(deck_id: 1, question: "What is the capital of Virginia", answer: "Richmond" )
# Card.create(deck_id: 1, question: "What is the capital of Kentucky", answer: "Frankfurt" )
# Card.create(deck_id: 1, question: "What is the capital of Tennessee", answer: "Nashville" )
# Card.create(deck_id: 1, question: "What is the capital of Arkansas", answer: "Little Rock" )
# Card.create(deck_id: 1, question: "What is the capital of Alaska", answer: "Juneau" )
# Card.create(deck_id: 1, question: "What is the capital of Hawaii", answer: "Honolulu" )
# Card.create(deck_id: 1, question: "What is the capital of Maryland", answer: "Annapolis" )
# Card.create(deck_id: 1, question: "What is the capital of Deleware", answer: "Dover" )
# Card.create(deck_id: 1, question: "What is the capital of Oklahoma ", answer: "Oklahoma City" )
# Card.create(deck_id: 1, question: "What is the capital of Pennsylvania", answer: "Harrisburg" )
# Card.create(deck_id: 1, question: "What is the capital of Arizona", answer: "Phoenix" )
# Card.create(deck_id: 1, question: "What is the capital of Massachusetts", answer: "Boston" )
# Card.create(deck_id: 1, question: "What is the capital of Iowa", answer: "Des Moines" )







# old one
# File.open("#{APP_ROOT}/db/fixtures").readlines.each do |line|
#   Word.create(:word => line.chomp, :sorted_word => line.chomp.downcase.chars.sort.join)
# end
