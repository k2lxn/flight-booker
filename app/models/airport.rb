class Airport < ActiveRecord::Base
	has_many :departing_flights, class_name: "Flight", foreign_key: "departs_from_id"
	has_many :arriving_flights, class_name: "Flight", foreign_key: "arrives_at_id"
end
