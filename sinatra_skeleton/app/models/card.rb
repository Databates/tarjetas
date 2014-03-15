class Card < ActiveRecord::Base
  # Remember to create a migration!
  # validates :question, uniqueness: true
  # validates :answer, presence: true
  belongs_to :deck

  # def is_correct?

  # end

def self.create_deck(deck_id)
    cards = Card.where(deck_id: deck_id).sample(10)
    cards.map{ |card| card.id }
  end

  def check_answer(guess)
    if self.answer.downcase == guess.downcase
      score += 1
    elsif guess == ""
      return 0
    else
      return -1
    end
  end
end
