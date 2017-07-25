require "docking_station"

describe DockingStation do

  describe "intialization" do
    subject { DockingStation.new }
    let(:bike) { Bike.new }

    it "defaults capacity" do
      described_class::DEAFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error "Docking station is full"
    end
  end

  it "has default capacity" do
    expect(subject.capacity).to eq DockingStation::DEAFAULT_CAPACITY
  end

  describe "#release_bike" do
    it "raises an error when there are no bikes available" do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end

    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe "#dock" do
    it "raises an error when full" do
      bike = Bike.new
      subject.capacity.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error "Docking station is full"
    end

    it "docks something" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
  end

  it "releases working bikes" do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
