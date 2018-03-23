class DockingStation

  attr_accessor :capacity
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

  def initialize capacity=DEFAULT_CAPACITY
    @capacity = capacity
    @bikes = []
  end

  def empty?
    @bikes.length == 0
  end

  def full?
    @bikes.length >= @capacity
  end

end
