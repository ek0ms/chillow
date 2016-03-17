require 'spec_helper'

RSpec.describe Apartment do
  let(:apartment) { Apartment.new("123 Fake Street", "Fake Town", "FA", "12345",
    2000, "2015/04/1", "2015/12/15") }
  let(:bob) { Occupant.new("Bob", "Roberts") }
  let(:bill) { Occupant.new("Bill", "Billberts") }
  let(:bab) { Occupant.new("Bab", "Babberts") }
  let(:fred) { Occupant.new("Fred", "Frederickson") }

  describe ".new" do
    it "takes address, city_or_town, state, zipcode, rent, lease_start_date,
     lease_end_date arguments" do
      expect(apartment).to be_a Apartment
    end
  end

  describe "#address" do
    it "has a reader for address" do
      expect(apartment.address).to eq "123 Fake Street"
    end
  end

  describe "#city_or_town" do
    it "has a reader for city_or_town" do
      expect(apartment.city_or_town).to eq "Fake Town"
    end
  end

  describe "#state" do
    it "has a reader for state" do
      expect(apartment.state).to eq "FA"
    end
  end

  describe "#zipcode" do
    it "has a reader for zipcode" do
      expect(apartment.zipcode).to eq "12345"
    end
  end

  describe "#rent" do
    it "has a reader for rent" do
      expect(apartment.rent).to eq 2000
    end
  end

  describe "#lease_start_date" do
    it "is a date object" do
      expect(apartment.lease_start_date).to be_a Date
    end

    it "is the date specificed" do
      expect(apartment.lease_start_date).to eq Date.parse("2015/04/1")
    end
  end

  describe "#lease_end_date" do
    it "is a date object" do
      expect(apartment.lease_end_date).to be_a Date
    end

    it "is the date specified" do
      expect(apartment.lease_end_date).to eq Date.parse("2015/12/15")
    end
  end

  describe "#physical_capacity" do
    it "has a reader for people living in apartment" do
      expect(apartment.physical_capacity).to be_a Array
      expect(apartment.physical_capacity).to eq []
    end
  end

  describe "#full?" do
    it "should return true if apartment is full" do
      apartment.add_one(bob)
      apartment.add_one(bill)
      apartment.add_one(bab)
      expect(apartment.full?).to eq true
    end
  end

  describe "add_one" do
    it "should add the roomate specificed if there's room" do
      apartment.add_one(bob)
      expect(apartment.physical_capacity).to include(bob)
    end

    it "should not add the roommate if the apartment is full" do
      apartment.add_one(bob)
      apartment.add_one(bill)
      apartment.add_one(bab)
      expect(apartment.add_one(fred)).to eq "There's no room for that!"
      expect(apartment.physical_capacity.size).to eq 3
    end
  end

  describe "remove_one" do
    it "should remove the roomated specified" do
      apartment.add_one(bob)
      apartment.add_one(bill)
      apartment.add_one(bab)
      apartment.remove_one(bab)
      expect(apartment.physical_capacity).to_not include bab
    end

    it "should not remove roomate if occupant doesn't live there" do
      expect(apartment.remove_one(bab)).to eq "It ain't here!"
    end
  end
end
