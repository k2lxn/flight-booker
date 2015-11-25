class FlightsController < ApplicationController
  def index
  	@flight = Flight.new
		
		@airports = Airport.all.map {|a| [a.code, a.id]}
		
		# Get all flight dates
		@flight_dates = []
		Flight.all.each do |flight|
			flight_date = flight.depart_time.strftime("%m/%d/%Y")
			@flight_dates.push(flight_date) unless @flight_dates.include?(flight_date)
		end
		
		@passengers_options = (1..4).map {|i| [i.to_s, i]}
  end
end
