class Deck < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, uniqueness: true, presence: true
  has_many :cards
  has_many :rounds
end
