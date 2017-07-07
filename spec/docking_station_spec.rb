require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it "releases working bikes" do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike ## here
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }  #here

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  describe "#release_bike"do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error when there are no bikes available" do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end
  end

=begin
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq bike
  end
=end

  describe "#dock" do
    it "raises an error when full" do
      DockingStation::DEAFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "Docking station is full"
    end
  end

  it "has default capacity" do
    expect(subject.capacity).to eq DockingStation::DEAFAULT_CAPACITY
  end

  describe "dock" do
    it "raises an error when full" do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "Docking station is full"
    end
  end

  describe "intialization" do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it "it defaults capacity" do
      described_class::DEAFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error "Docking station is full"
    end
  end



end
