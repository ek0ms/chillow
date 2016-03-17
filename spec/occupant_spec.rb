require 'spec_helper'

RSpec.describe Occupant do
  let(:occupant) { Occupant.new("Bruce", "Wayne") }

  describe ".new" do
    it "takes first_name and last_name as arguments" do
      expect(occupant).to be_a Occupant
    end
  end

  describe "#first_name" do
    it "has a reader for first name" do
      expect(occupant.first_name).to eq "Bruce"
    end
  end

  describe "#last_name" do
    it "has a reader for last name" do
      expect(occupant.last_name).to eq "Wayne"
    end
  end
end
