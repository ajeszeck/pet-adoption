require 'spec_helper'

describe User do

  let(:user) { User.create!(full_name: "Test Name", username: 'testname', email: 'test_email@email.com') }
  let(:spot) { Pet.create!(name: 'Spot', species: 'dog', color: 'Brown', age: 2, adopted: false) }
  let(:pepper) { Pet.create!(name: 'Pepper', species: 'cat', color: 'Black', age: 4, adopted: true) }

  describe 'associations' do
    it "has a full name" do
      expect(user.full_name).to eq("Test Name")
    end
    it "has a username" do
      expect(user.username).to eq('testname')
    end
    it "has a email" do
      expect(user.email).to eq('test_email@email.com')
    end
  end

  describe 'associations' do
    it 'has many followed pets' do
      user.followed_pets << spot
      user.followed_pets << pepper
      expect(user.followed_pets).to eq([spot, pepper]);
    end
  end
end
