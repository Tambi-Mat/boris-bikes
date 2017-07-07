require_relative "bike"

class DockingStation

  DEAFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity = DEAFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail "Docking station is full" if full?
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  private

  # attr_reader :bikes

  def full?
    @bikes.count >= DEAFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
