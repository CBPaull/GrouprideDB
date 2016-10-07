class Route < ActiveRecord::Base
  belongs_to :user	
  has_many :ratings 
  has_many :favorites
  has_many :grouprides
  has_many :comments, as: :commentable
  belongs_to :address
  has_many :route_ratings, through: :ratings, source: :users
  has_many :route_comments, through: :comments, source: :users
  has_many :route_favorites, through: :favorites, source: :users
end
