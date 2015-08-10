# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  name       :string
#  subdomain  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ActiveRecord::Base
  validates :name, :subdomain, presence: true
  validates :subdomain,
    format: { with: /\A[a-z][a-z0-9\-]+[a-z0-9]\Z/ },
    uniqueness: true

  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  has_one :owner_membership, -> { where(role: 'owner') }, class_name: 'Membership'
  has_one :owner, through: :owner_membership, source: :user, class_name: 'User'
  accepts_nested_attributes_for :owner
end
