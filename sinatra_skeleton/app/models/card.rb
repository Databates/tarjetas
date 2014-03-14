class Card < ActiveRecord::Base
  # Remember to create a migration!
  validates :question, uniqueness: true, presence: true
  validates :name, presence: true

  belongs_to :deck

end
