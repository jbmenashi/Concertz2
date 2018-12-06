class AddColumnDateAndTimeToConcerts < ActiveRecord::Migration[5.2]
  def change
    add_column :concerts, :date_and_time, :datetime
  end
end
