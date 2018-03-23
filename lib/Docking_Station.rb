class DockingStation

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Docking Station is full" if full?
    @bikes.push(bike)
  end

private

  def initialize
    @bikes = []
  end

  def empty?
    @bikes.length == 0
  end

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

end
