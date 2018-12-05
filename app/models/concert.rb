class Concert < ApplicationRecord
  has_many :tickets
  has_many :squads, through: :tickets

def self.search(artist)
  if artist
    Concert.all.select do |con|
      con.artist.include?(artist)
    end
  else
    []
  end
end

end
