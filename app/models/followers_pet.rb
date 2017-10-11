class FollowersPet < ActiveRecord::Base
  belongs_to :user, foreign_key: 'follower_id'
  belongs_to :pet
end
