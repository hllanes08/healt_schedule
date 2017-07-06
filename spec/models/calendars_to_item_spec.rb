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

require 'rails_helper'

RSpec.describe CalendarsToItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
