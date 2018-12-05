class Concert < ApplicationRecord
  has_many :tickets
  has_many :squads, through: :tickets

  def self.search(artist)
    if artist
      where('artist LIKE ?', "%#{artist}%")
      else
        Concert.all
      end
    end

end
