class Squad < ApplicationRecord
  has_many :tickets
  has_many :squads, through: :tickets
  has_many :photos
  has_many :user_squads
  has_many :users, through: :user_squads
end
