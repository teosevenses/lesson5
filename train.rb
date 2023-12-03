require_relative "with_manufacturer"
require_relative "instance_counter"

class Train
  include InstanceCounter
  include WithManufacturer

  @@all = []

  attr_reader :type, :num
  attr_accessor :route, :station

  def self.find(num)
    all.find { |train| num == train.num }
  end

  def initialize(num)
    @num = num
    @@all << self
    register_instance
  end

  def self.all
    @@all
  end
    
  def move_forward
    if route != nil && station != nil 
      self.station = station + 1    
    end
  end 

  def move_back
    if route != nil && station != nil 
      self.station = station - 1    
    end
  end 
end


