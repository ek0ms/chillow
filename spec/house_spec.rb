require 'spec_helper'

RSpec.describe House do
  let(:house) { House.new("123 Fake Street", "Fake Town", "FA", "12345", 250000) }

  describe ".new" do
    it "takes address, city_or_town, state, zipcode, asking_price as arguments" do
      expect(house).to be_a House
    end
  end

  describe "#address" do
    it "has a reader for address" do
      expect(house.address).to eq "123 Fake Street"
    end
  end

  describe "#city_or_town" do
    it "has a reader for city_or_town" do
      expect(house.city_or_town).to eq "Fake Town"
    end
  end

  describe "#state" do
    it "has a reader for state" do
      expect(house.state).to eq "FA"
    end
  end

  describe "#zipcode" do
    it "has a reader for zipcode" do
      expect(house.zipcode).to eq "12345"
    end
  end

  describe "#asking_price" do
    it "has a reader for asking_price" do
      expect(house.asking_price).to eq 250000
    end
  end
end
