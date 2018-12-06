class Concert < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets

def self.search(artist)
     Concert.all.select do |con|
      con.artist.include?(artist) || con.artist.include?(artist.capitalize)
    end
end

def eastern_time
  self.date_and_time.in_time_zone('Eastern Time (US & Canada)')
end



def readable_datetime
  "#{self.eastern_time.strftime('%B %d, %Y at %H:%M')}"
end

end
