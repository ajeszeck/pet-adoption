class User < ActiveRecord::Base
  has_many :followers_pets, :foreign_key => :follower_id
  has_many :followed_pets, :class_name => 'Pet', :through => :followers_pets, :source => :pet

end
