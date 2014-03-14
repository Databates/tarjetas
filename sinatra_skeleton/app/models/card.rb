class Card < ActiveRecord::Base
  # Remember to create a migration!
  # validates :question, uniqueness: true
  # validates :answer, presence: true


  belongs_to :deck

end
