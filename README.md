#Project Name: Boris Bikes

#Week 1 of Makers Academy
--------------------------

The two key learning objectives for this challenge were focused around Test Driven Development and Effective Pairing Programming

Authors
--------

Russell Vaughan
David Parry
Fraser Watson
Kait Beudette
Marco Bagnasco
Bjoern Wagner

Features of program
--------------------

This is a replica of the Boris (Santander) Bike system. It allows us to Dock and Release a Bike from a Docking Station. Check if a 
bike is working, if not report that bike. Have a van bike up broken bikes from the docking station. Take broken bikes to a garage.
The garage fixes the bikes and the van can take the bikes back to the dockign station.

Installation and example use
----------------------------

```
2.2.1 :001 > require './lib/docking_station'
 => true 
2.2.1 :002 > require './lib/van'
 => true 
2.2.1 :003 > docking_station = DockingStation.new
 => #<DockingStation:0x007fc05a8b5a70 @bikes=[], @capacity=20> 
2.2.1 :004 > bike = Bike.new
 => #<Bike:0x007fc05a19a0b0 @working=true> 
2.2.1 :005 > van = Van.new
 => #<Van:0x007fc05a18ac28 @bike_hold=[]> 
2.2.1 :006 > garage = Garage.new
 => #<Garage:0x007fc05a17a4b8 @broken_bikes=[], @fixed_bikes=[]> 
2.2.1 :007 > docking_station.dock(bike)
 => [#<Bike:0x007fc05a19a0b0 @working=true>] 
2.2.1 :008 > docking_station.release_bike
 => #<Bike:0x007fc05a19a0b0 @working=true> 
2.2.1 :009 > docking_station.bikes
 => [] 
2.2.1 :010 > bike.report_broken
 => false 
2.2.1 :011 > bike.working
 => false 
2.2.1 :012 > docking_station.dock(bike)
 => [#<Bike:0x007fc05a19a0b0 @working=false>] 
2.2.1 :013 > docking_station.bikes
 => [#<Bike:0x007fc05a19a0b0 @working=false>] 
2.2.1 :014 > van.collect(docking_station)
 => [#<Bike:0x007fc05a19a0b0 @working=false>] 
2.2.1 :015 > van.deliver(garage)
 => [] 
2.2.1 :016 > garage.fix_bikes
 => [#<Bike:0x007fc05a19a0b0 @working=true>] 
2.2.1 :017 > van.collect(garage)
 => [] 
2.2.1 :018 > van.deliver(docking_station)
 => [] 
2.2.1 :019 >  docking_station.bikes
 => [#<Bike:0x007fc05a19a0b0 @working=true>] 