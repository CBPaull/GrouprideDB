class User < ActiveRecord::Base
  belongs_to :address
  has_many :comments 
  has_many :favorites
  has_many :routes
  has_many :attendees
  has_many :friendships
  has_many :grouprides
  has_many :ratings
  has_many :joined_rides, through: :attendees, source: :grouprides
  has_many :faveorite_routes, through: :favorites, source: :routes
  has_many :friends, through: :friendships, source: :users
  has_many :rated_routes, through: :raitngs, source: :routes
  has_secure_password
end
