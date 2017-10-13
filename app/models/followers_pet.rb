class FollowersPet < ActiveRecord::Base
  belongs_to :user, foreign_key: 'follower_id'
  belongs_to :pet
  validates_uniqueness_of :pet_id, scope: :follower_id, message: "is already on your follow list."
end
