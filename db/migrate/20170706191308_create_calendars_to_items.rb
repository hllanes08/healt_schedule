class CreateCalendarsToItems < ActiveRecord::Migration[5.0]
  def change
    create_table :calendars_to_items do |t|
      t.integer :calendar_id
      t.integer :calendar_item_id

      t.timestamps
    end
  end
end
