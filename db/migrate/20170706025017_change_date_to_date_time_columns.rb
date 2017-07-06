class ChangeDateToDateTimeColumns < ActiveRecord::Migration[5.0]
  def change
    change_column :calendar_items, :start_event_date, :datetime
    change_column :calendar_items, :end_event_date, :datetime
  end
end
