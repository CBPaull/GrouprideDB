class Attendee < ActiveRecord::Base
  belongs_to :user
  belongs_to :groupride
end
