# == Schema Information
#
# Table name: calendars_to_items
#
#  id               :integer          not null, primary key
#  calendar_id      :integer
#  calendar_item_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CalendarsToItem < ApplicationRecord
  belongs_to :calendar_item
  belongs_to :calendar
end
