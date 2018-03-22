class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if @bikes.length == 0
    @bike
  end

  def dock_bike(bike)
    @bike = bike
    fail "Docking Station is full!" if @bikes.length >= 20
    @bikes.push(@bike)
  end

end
