require './lib/bike.rb'

class DockingStation

attr_reader :bike

  def initialize(amount_of_bikes = 0)
    @amount_of_bikes = amount_of_bikes
  end

  def release_bike
    if @amount_of_bikes > 0
    # create a new bike object
      Bike.new
    end
    raise "Sorry, no bikes!"
  end

  def dock(bike)
    bike
  end

end
