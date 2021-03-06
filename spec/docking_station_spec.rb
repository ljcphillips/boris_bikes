require "docking_station"
require "bike"



# it 'releases working bikes' do
#   allow(bike).to receive(:working?).and_return(true)
#    subject.dock(bike)
#     released_bike = subject.release_bike
#       expect(released_bike).to be_working


describe DockingStation do
  let(:bike) { double :bike}
  it "should capacity for a new instance of DockingStation" do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq 30
  end

  describe "#release_bike" do
  it "expected to respond to release_bike" do
   is_expected.to respond_to(:release_bike)
  end

  it "should raise an error when bikes are not available" do
    expect {subject.release_bike}.to raise_error("No bikes available")
  end

  it "gets a bike when passed release_bike" do
    subject.dock_bike Bike.new
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
  end

  describe "#dock_bike" do

  it "returns true if bike is working" do
    allow(bike).to receive(:working).and_return(true)
    subject.dock_bike bike
    expect(subject.release_bike.working).to be(true).or be(false)
  end

  it "expected to respond to dock_bike" do
     is_expected.to respond_to(:dock_bike)
  end

  it "expected to respond to dock_bike" do
     expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it "should raise an error when docking_station is full" do
    (DockingStation::DEFAULT_CAPACITY).times { subject.dock_bike bike}
    expect {subject.dock_bike bike}.to raise_error("Docking Station is full")
  end


  it "should return a bike when a bike is available" do
    subject.dock_bike Bike.new
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it "allows to report a bike as broken" do
    allow(bike).to receive(:working=).with(false)
    allow(bike).to receive(:working).and_return(false)
    subject.dock_bike(bike, true)
    expect(bike.working).to eq false
  end
end
end
