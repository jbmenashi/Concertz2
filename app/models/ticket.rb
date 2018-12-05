class Ticket < ApplicationRecord
  belongs_to :squad
  belongs_to :concert

  def readable_datetime
    "#{self.date_and_time.strftime('%B %d, %Y at %H:%M')}"
  end

end
