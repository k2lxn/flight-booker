# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sfo = Airport.create(code: "SFO")
lax = Airport.create(code: "LAX")

Flight.create( depart_time: DateTime.strptime("12/05/2015 13:00", "%m/%d/%Y %H:%M"),
							 duration: 155,
							 departs_from_id: sfo.id,
							 arrives_at_id: lax.id )
							
Flight.create( depart_time: DateTime.strptime("12/31/2015 08:00", "%m/%d/%Y %H:%M"),
							 duration: 155,
							 departs_from_id: lax.id,
							 arrives_at_id: sfo.id )
