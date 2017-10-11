class Pet < ActiveRecord::Base
  has_many :followers_pets, :foreign_key => :pet_id
  has_many :followers, :class_name => 'User', :through => :followers_pets, :source => :user
end
