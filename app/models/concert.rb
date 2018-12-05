class Concert < ApplicationRecord
  has_many :tickets
  has_many :squads, through: :tickets

  # def self.search(artist)
  #   if artist
  #     where('artist LIKE ?', "%#{artist}%")
  #     else
  #       Concert.all
  #     end
  #   end


def self.search(artist)
  if artist
    found_artist = self.find_by(artist: artist)
    if found_artist
      self.where(concert_id: found_artist)
    else
      self.all
    end
  else
    self.all
  end
end

end
