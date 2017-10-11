class CreateFollowersPets < ActiveRecord::Migration
  def change
    create_table :followers_pets do |t|
      t.integer :follower_id
      t.integer :pet_id
    end
  end
end
