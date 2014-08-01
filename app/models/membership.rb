class Membership < ActiveRecord::Base
  belongs_to :robber
  belongs_to :gang
end
