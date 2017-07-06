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

require 'rails_helper'

RSpec.describe Calendar, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
