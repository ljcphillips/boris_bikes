class DockingStation

  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock_bike(bike)
    fail "Docking Station is full!" if @bike
    @bike = bike
  end

end
