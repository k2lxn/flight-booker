class Booking < ActiveRecord::Base
	belongs_to :flights
	belongs_to :passengers
end
