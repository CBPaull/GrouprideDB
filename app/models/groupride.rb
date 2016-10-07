class Groupride < ActiveRecord::Base
  belongs_to :route
  belongs_to :user
  has_many :attendees
  has_many :comments, as: :commentable
  has_many :users_attending, through: :attendees, source: :users
  has_many :ride_comments, through: :comments, source: :users
end
