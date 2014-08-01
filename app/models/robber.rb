class Robber < ActiveRecord::Base
  has_many :memberships
  has_many :events
end
