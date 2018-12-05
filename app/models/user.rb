class User < ApplicationRecord
  has_many :user_squads
  has_many :photos
  has_many :squads, through: :user_squads
end
