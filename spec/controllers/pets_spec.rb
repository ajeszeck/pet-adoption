require 'spec_helper'

describe "pets controller" do
  let(:spot) { Pet.create!(name: 'Spot', species: 'dog', color: 'Brown', age: 2, adopted: false) }


  describe " / reroutes" do
    it "returns a 302 status code" do
      get '/'
      expect(last_response.status).to eq 302
    end
  end

  describe "get /pets" do
    before(:each) { get '/pets'}
    it "returns a 200 status" do
      expect(last_response.status).to eq 200
    end
    it "shows all posts on the index show page" do
      expect(last_response.body).to include("Pets for Adoption")
    end
  end

  describe "get /pets/:id" do
    before(:each) { get "/pets/#{spot.id}"}
    it "returns a 200 status" do
      expect(last_response.status).to eq 200
    end
    it "shows information about one pet" do
      expect(last_response.body).to include("Spot")
    end
  end
end
