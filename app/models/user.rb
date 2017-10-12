class User < ActiveRecord::Base
  has_many :followers_pets, :foreign_key => :follower_id
  has_many :followed_pets, :class_name => 'Pet', :through => :followers_pets, :source => :pet

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
