class DockingStation

  attr_accessor :capacity
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def release_bike
    raise "No bikes available" if empty? || !@bikes.any? { |bike| bike.working }
    @bikes.delete_at(@bikes.index { |bike| bike.working })
  end

  def dock_bike(bike, broken=false)
    raise "Docking Station is full" if full?
    bike.working = false if broken
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
