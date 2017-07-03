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

require 'rails_helper'

RSpec.describe CalendarItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
