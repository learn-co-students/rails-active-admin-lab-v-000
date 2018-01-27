class Artist < ActiveRecord::Base
  has_many :songs
  
  extend FriendlyId
  friendly_id :new, use: [:slugged, :finders]
end
