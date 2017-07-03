class CreateCalendarItems < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_items do |t|
      t.date :event_date
      t.boolean :is_weekeend

      t.timestamps
    end
  end
end
