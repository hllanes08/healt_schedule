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

FactoryGirl.define do
  factory :calendar do
    name "MyString"
    calendar_start_date "2017-07-06"
    user_id 1
  end
end
