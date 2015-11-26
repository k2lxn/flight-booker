# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Airports
sfo = Airport.create(code: "SFO", name: "San Francisco")
lax = Airport.create(code: "LAX", name: "Los Angeles")
jfk = Airport.create(code: "JFK", name: "John F. Kennedy")
bos = Airport.create(code: "BOS", name: "Logan")


# Week of 12/5/2015 - 12/12/2015
# Morning flights, SFO -> LAX
7.times do |i|
	date = Date.new(2015, 12, (5+i))
	timestamp = DateTime.new(2015, 12, (5+i), 8, 35)	
	Flight.create( date: date,
								 depart_time: timestamp, 
								 duration: 155,
							   departs_from_id: sfo.id,
							   arrives_at_id: lax.id )
end							 
							 
# Afternoon flights, SFO -> LAX
7.times do |i|
	date = Date.new(2015, 12, (5+i))
	timestamp = DateTime.new(2015, 12, (5+i), 14, 20)	
	Flight.create( date: date,
								 depart_time: timestamp, 
								 duration: 155,
							   departs_from_id: sfo.id,
							   arrives_at_id: lax.id )
end

# Morning flights, LAX -> SFO
7.times do |i|
	date = Date.new(2015, 12, (5+i))
	timestamp = DateTime.new(2015, 12, (5+i), 8, 5)	
	Flight.create( date: date,
								 depart_time: timestamp, 
								 duration: 145,
							   departs_from_id: lax.id,
							   arrives_at_id: sfo.id )
end

# Afternoon flights, LAX -> SFO	
7.times do |i|
	date = Date.new(2015, 12, (5+i))
	timestamp = DateTime.new(2015, 12, (5+i), 13, 45)	
	Flight.create( date: date,
								 depart_time: timestamp, 
								 duration: 145,
							   departs_from_id: lax.id,
							   arrives_at_id: sfo.id )
end





						 