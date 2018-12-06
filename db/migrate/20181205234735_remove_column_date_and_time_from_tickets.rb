class RemoveColumnDateAndTimeFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :date_and_time, :datetime
  end
end
