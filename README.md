# Boris Bikes Challenge #
Makers Academy Week 1 project

## Notes ##
### User Story ###
**story 1**:  person, bike, docking station
          use, release a bike

**story 2**:  person, bike
          use, see if bike is working


*Objects* | *Messages*
--------- | ----------
Person | (use)
Bike | working?
DockingStation | release_bike

*Diagram*
Bike <-- working? --> true/false
DockingStation <--release_bike --> a Bike

### Stack trace / Debugging ###
error message example:
NameError: uninitialized constant DockingStation
	from (irb):1
	from /Users/petra/.rvm/rubies/ruby-2.4.0/bin/irb:11

*type of error:* NameError (uninitialized constant)
*file path of error:* /Users/petra/.rvm/rubies/ruby-2.4.0/bin/irb
*line number of the error:* 11
