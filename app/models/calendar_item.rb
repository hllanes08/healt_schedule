# == Schema Information
#
# Table name: calendar_items
#
#  id               :integer          not null, primary key
#  is_weekend       :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  start_event_date :datetime
#  end_event_date   :datetime
#

class CalendarItem < ApplicationRecord
  has_many :calendars_to_item
  has_many :calendars, through: :calendars_to_item
end
