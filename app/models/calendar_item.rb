# == Schema Information
#
# Table name: calendar_items
#
#  id         :integer          not null, primary key
#  event_date :date
#  is_weekend :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CalendarItem < ApplicationRecord
end
