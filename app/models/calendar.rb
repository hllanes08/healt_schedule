# == Schema Information
#
# Table name: calendars
#
#  id         :integer          not null, primary key
#  name       :string
#  start_date :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  n_days     :integer
#

class Calendar < ApplicationRecord
  has_one :user
  has_many :calendars_to_item
  has_many :calendar_items,-> { where('start_event_date > ?', Time.current)} ,through: :calendars_to_item 

  def self.exists(start_date, n_days)
    Calendar.where(start_date: start_date, n_days: n_days).count > 0
  end

end
