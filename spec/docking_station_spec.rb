require "docking_station"
require "bike"

describe DockingStation do

  it "expected to respond to release_bike" do
   is_expected.to respond_to(:release_bike)
  end

  it "gets a bike when passed release_bike" do
    station = DockingStation.new
    station.dock_bike(Bike.new)
   expect(station.release_bike).to be_an_instance_of(Bike)
  end

  it "returns true if bike is working" do
    station = DockingStation.new
    station.dock_bike(Bike.new)
    expect(station.release_bike.working?).to be(true).or be(false)
  end

  it "expected to respond to dock_bike" do
     is_expected.to respond_to(:dock_bike)
  end

  it "expected to respond to dock_bike" do
     expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end

  it "should raise an error when docking_station is full" do
    station = DockingStation.new
     20.times { station.dock_bike(Bike.new)}
    expect{ station.dock_bike(Bike.new) }.to raise_error("Docking Station is full!")
  end

  it "should raise an error when bikes are not available" do
    station = DockingStation.new
    expect{ station.release_bike }.to raise_error("No bikes available")
  end

  it "should return a bike when a bike is available" do
    docking_station = DockingStation.new
    docking_station.dock_bike(Bike.new)
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end

end
