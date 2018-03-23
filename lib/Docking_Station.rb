class DockingStation

  attr_reader :bike
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def release_bike
    unless empty?
      @bike
    end
  end

  def dock_bike(bike)
    unless full?
      @bike = bike
      @bikes.push(@bike)
    end
  end

private

  def initialize
    @bikes = []
  end

  def empty?
    if @bikes.length == 0
      puts 'No bikes available'
      true
    end
  end

  def full?
    if @bikes.length >= DEFAULT_CAPACITY
      puts 'Docking station is full!'
      true
    end
  end

end
