require_relative "with_manufacturer"

class Wagon
	include WithManufacturer

	attr_reader :type
	
end