# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  account_id :integer
#  user_id    :integer
#  role       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
