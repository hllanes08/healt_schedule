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

FactoryGirl.define do
  factory :calendars_to_item do
    calendar_id 1
    calendar_item_id 1
  end
end
