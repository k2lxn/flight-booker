class FlightsController < ApplicationController
  def index
  	@flight = Flight.new
		
		@airports = Airport.all.map {|a| [a.code, a.id]}
		
		@flight_dates = Flight.get_flight_dates
		
		@passengers_options = (1..4).map {|i| [i.to_s, i]}
  
 		if not params[:flight].nil?   
  		@matching_flights = Flight.search( flight_params[:departs_from],
  																			 flight_params[:arrives_at], 
  																		 	 flight_params[:date] )
  	end		
  																 
  end
  
  private
  
  	def flight_params
  		params.require(:flight).permit(:departs_from, :arrives_at, :date)
  	end
  
end
