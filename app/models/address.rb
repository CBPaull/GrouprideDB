class Address < ActiveRecord::Base
	has_many :users
	has_many :routes
	acts_as_mappable :auto_geocode=>{:field=>:address},
	 				 :default_units => :miles,
                     :default_formula => :sphere,
                     :distance_field_name => :distance,
                     :lat_column_name => :lat,
                     :lng_column_name => :lng

end
