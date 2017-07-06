class AddStartEventDateEndEventDateToCalendarItem < ActiveRecord::Migration[5.0]
  def change
    add_column :calendar_items, :start_event_date, :date
    add_column :calendar_items, :end_event_date, :date
    remove_column :calendar_items, :event_date, :date
  end
end
