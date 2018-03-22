require "docking_station"
require "bike"

# describe DockingStation do
#   it "expected to respond to release_bike" do
#   expect(DockingStation.new).to respond_to (:release_bike)
#   end
# end

describe DockingStation do

  docking_station = DockingStation.new

  it "expected to respond to release_bike" do
   is_expected.to respond_to (:release_bike)
  end

  it "gets a bike when passed release_bike" do
   expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end

  it "returns true if bike is working" do
    expect(docking_station.release_bike.working?).to be(true).or be(false)
  end

  it "expected to respond to dock_bike" do
     is_expected.to respond_to (:dock_bike)
  end

  it "expected to respond to dock_bike" do
     expect(docking_station).to respond_to(:dock_bike).with(1).argument
  end

  it "should show docking station status" do
    expect(docking_station.bike).to be_an_instance_of(Bike)
  end

end



# Add a test to your DockingStation specification that
# a) gets a bike, and then b) expects the bike to be working
