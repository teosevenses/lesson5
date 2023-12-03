require_relative "instance_counter"

class Station
  include InstanceCounter
  attr_accessor :trains, :name

  @@all = []

  def initialize(name)
   @name = name
   @trains = []
   @@all << self
   register_instance
  end

  def self.all
    @@all
  end

  def add_train(train)
  @trains << train
  end

  def delete_train(train)
  @trains.delete(train)
  end

  def train_type(type)
    @trains.select {|train| train.type == type}.count
  end

end








