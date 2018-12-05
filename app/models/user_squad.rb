class UserSquad < ApplicationRecord
  belongs_to :squad
  belongs_to :user
end
