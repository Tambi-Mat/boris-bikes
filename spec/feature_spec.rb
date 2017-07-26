=begin
require './lib/docking_station'

require './lib/bike'

station = DockingStation.new

bike = Bike.new

station.dock Bike.new

bike = station.release_bike

bike.working?

station.dock(bike)

station.bike

station.release_bike

20.times { station.dock Bike.new }

DockingStation.new 50

bike.report_broken
=end
