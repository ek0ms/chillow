require 'spec_helper'

RSpec.describe Truck do
  let(:truck) { Truck.new(10) }
  let(:bob) { Occupant.new("Bob", "Roberts") }
  let(:box) { Box.new(bob) }
  let(:fred) { Occupant.new("Fred", "Frederickson") }
  let(:box2) { Box.new(fred) }

  describe ".new" do
    it "takes in max_capacity as argument" do
      expect(truck).to be_a Truck
    end
  end

  describe "#max_capacity" do
    it "should return the max capacity of the truck" do
      expect(truck.max_capacity).to eq 10
    end
  end

  describe "#physical_capacity" do
    it "has a reader for things in the truck" do
      expect(truck.physical_capacity).to eq []
    end
  end

  describe "#full?" do
    it "should return true if truck is full" do
      10.times do
        truck.add_one(box)
      end
      expect(truck.full?).to eq true
    end

    it "should return false if truck is not full" do
      expect(truck.full?).to eq false
    end
  end

  describe "#add_one" do
    it "should add a box to the truck if not full" do
      truck.add_one(box)
      expect(truck.physical_capacity.size).to be > 0
    end

    it "should not add a box if truck is full" do
      10.times do
        truck.add_one(box)
      end
      expect(truck.add_one(box)).to eq "There's no room for that!"
    end
  end

  describe "#remove_one" do
    it "should remove a box if there are boxes in the truck" do
      truck.add_one(box)
      truck.remove_one(box)
      expect(truck.physical_capacity.size).to eq 0
    end

    it "should not remove a box if that box is not in the truck" do
      expect(truck.remove_one(box)).to eq "It ain't here!"
    end
  end

  describe "#unload_all" do
    it "should unload all boxes that are related to the occupant" do
      4.times do
        truck.add_one(box)
      end
      6.times do
        truck.add_one(box2)
      end
      truck.unload_all(fred)
      expect(truck.physical_capacity.include?(box2)).to eq false
    end

    it "should not unload boxes if occupant doesn't own any boxes" do
      4.times do
        truck.add_one(box)
      end
      expect(truck.unload_all(fred)).to eq "That person doesn't have any boxes!"
    end
  end
end
