class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :user_name, uniqueness: true, presence: true
  validates :password, length: { in: 4..8 }, presence: true

  has_many :rounds
end
