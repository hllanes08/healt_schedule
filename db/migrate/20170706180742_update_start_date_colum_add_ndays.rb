class UpdateStartDateColumAddNdays < ActiveRecord::Migration[5.0]
  def change
    rename_column :calendars, :calendar_start_date, :start_date
    add_column :calendars, :n_days, :integer
  end
end
