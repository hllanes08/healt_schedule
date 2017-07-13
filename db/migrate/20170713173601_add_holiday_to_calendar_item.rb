class AddHolidayToCalendarItem < ActiveRecord::Migration[5.0]
  def change
    add_column :calendar_items, :is_holiday, :boolean
  end
end
