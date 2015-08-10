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

FactoryGirl.define do
  factory :membership do
    account
    user
    role SYSTEM_ROLES.first
  end
end
