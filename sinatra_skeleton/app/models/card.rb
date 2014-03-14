class Card < ActiveRecord::Base
  # Remember to create a migration!
<<<<<<< HEAD
  validates :question, uniqueness: true, presence: true
  validates :name, presence: true
=======
  # validates :qsad'pokfasddlas'lkfj'estion, uniqueness: true
  # validates :answer, presence: true
>>>>>>> 8ac7e09c92582670405ff75fdf08b997f74070ba

  belongs_to :deck

end
