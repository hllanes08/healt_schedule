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
#  is_holiday       :boolean
#

FactoryGirl.define do
  factory :calendar_item do
    event_date "2017-07-03"
    is_weekeend false
  end
end
