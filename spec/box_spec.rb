require 'spec_helper'

RSpec.describe Box do
  let(:bob) { Occupant.new("Bob", "Roberts") }
  let(:box) { Box.new(bob) }

  describe ".new" do
    it "should take in an occupant as an argument" do
      expect(box).to be_a Box
    end
  end

  describe "#owner" do
    it "has a reader for owner of the box" do
      expect(box.owner).to eq "Bob Roberts"
    end
  end
end
