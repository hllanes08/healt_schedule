class FixIsWeekendColName < ActiveRecord::Migration[5.0]
  def change
    rename_column :calendar_items, :is_weekeend, :is_weekend
  end
end
