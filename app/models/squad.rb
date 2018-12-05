class Squad < ApplicationRecord
  has_many :tickets
  has_many :squads, through: :tickets
end
