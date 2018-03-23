class DockingStation

  attr_reader :bikes
  attr_reader :capacity

  def release_bike
    raise "No bikes available" if empty?
    bikes @bikes.delete_at(@bikes.length-1) 
  end

  def dock_bike(bike)
    raise "Docking Station is full" if full?
    @bikes.push(bike)
  end

private

  def initialize capacity = 20
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

class Bike

  def initialize
    @working = true
  end

  def break
    @working = false
    return self
  end

end
