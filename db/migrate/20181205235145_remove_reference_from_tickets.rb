class RemoveReferenceFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tickets, :squad, index: true, foreign_key: true
  end
end
