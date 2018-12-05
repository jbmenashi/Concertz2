class Ticket < ApplicationRecord
  belongs_to :squad
  belongs_to :concert
end
