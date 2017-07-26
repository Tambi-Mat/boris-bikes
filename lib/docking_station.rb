require_relative "bike"

class DockingStation

  DEAFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity = DEAFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail "Docking station is full" if full? # guard condition
    bikes << bike
    # we need to return the bike we dock
    # Use an instance variable to store the bike
    # in the 'state' of this instance
  end

  def release_bike
    fail "No bikes available" if empty? || bikes.all? { |bike| bike.broken? }
    bikes.pop
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end

  # add to bike method to return the bike we docked
#  def bike
#    @bike
#   end

end
