require 'spec_helper'

RSpec.describe Dwelling do
  let(:dwelling) { Dwelling.new("123 Fake Street", "Fake Town", "FA", "12345") }

  describe ".new" do
    it "takes address, city_or_town, state, and zipcode as arguments" do
      expect(dwelling).to be_a Dwelling
    end
  end

  describe "#address" do
    it "has a reader for address" do
      expect(dwelling.address).to eq "123 Fake Street"
    end
  end

  describe "#city_or_town" do
    it "has a reader for city_or_town" do
      expect(dwelling.city_or_town).to eq "Fake Town"
    end
  end

  describe "#state" do
    it "has a reader for state" do
      expect(dwelling.state).to eq "FA"
    end
  end

  describe "#zipcode" do
    it "has a reader for zipcode" do
      expect(dwelling.zipcode).to eq "12345"
    end
  end
end
