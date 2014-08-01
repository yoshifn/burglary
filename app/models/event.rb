class Event < ActiveRecord::Base
  belongs_to :bank
  belongs_to :robber
end
