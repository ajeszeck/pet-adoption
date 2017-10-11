require 'spec_helper'

describe Pet do

  let(:user) { User.create!(full_name: "Test Name", username: 'testname', email: 'test_email@email.com') }
  let(:user2) { User.create!(full_name: "Second Name", username: 'testname2', email: 'test_email2@email.com') }
  let(:spot) { Pet.create!(name: 'Spot', species: 'dog', color: 'Brown', age: 2, adopted: false) }

  describe 'associations' do
    it "has a name" do
      expect(spot.name).to eq('Spot')
    end
    it "has a species" do
      expect(spot.species).to eq('dog')
    end
    it "has a color" do
      expect(spot.color).to eq('Brown')
    end
    it "has an age" do
      expect(spot.age).to eq(2)
    end
    it "keeps track of if it is adopted" do
      expect(spot.adopted).to eq(false)
    end
  end

  describe 'associations' do
    it 'has many followers' do
      spot.followers << user
      spot.followers << user2
      expect(spot.followers).to eq([user, user2])
    end
  end
end
