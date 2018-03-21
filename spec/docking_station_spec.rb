require "Docking_Station"

# describe DockingStation do
#   it "expected to respond to release_bike" do
#   expect(DockingStation.new).to respond_to (:release_bike)
#   end
# end

describe DockingStation.new do
  it { is_expected.to respond_to (:release_bike) }
end 
