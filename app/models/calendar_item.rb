# == Schema Information
#
# Table name: calendar_items
#
#  id               :integer          not null, primary key
#  is_weekend       :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  start_event_date :date
#  end_event_date   :date
#

class CalendarItem < ApplicationRecord
end
