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

class Membership < ActiveRecord::Base
  belongs_to :account
  belongs_to :user

  validates :account, :user, presence: true
  validates :role, inclusion: { in: SYSTEM_ROLES }
end
