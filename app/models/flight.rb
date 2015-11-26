class Flight < ActiveRecord::Base
	belongs_to :departs_from, class_name: "Airport"
	belongs_to :arrives_at, class_name: "Airport"
	
	def self.search(departs_from, arrives_at, date)
		matches = Flight.where(departs_from_id: departs_from,
									arrives_at_id: arrives_at,
									date: date)													
	end
	
	def self.get_flight_dates
  	flight_dates = []
  	Flight.all.each do |flight|
			flight_date = flight.date.strftime("%m/%d/%Y")
			flight_dates.push([flight_date, flight.date]) unless flight_dates.include?([flight_date, flight.date])
		end
		flight_dates
  end
	
end
