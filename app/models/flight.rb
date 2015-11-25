class Flight < ActiveRecord::Base
	belongs_to :departs_from, class_name: "Airport"
	belongs_to :arrives_at, class_name: "Airport"
end
