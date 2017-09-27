require './lib/bike.rb'

class DockingStation

attr_reader :bike

  def release_bike
    fail "Sorry, no bikes!" unless @bike
    @bike
  end

  def dock(bike)
    bike
  end

end
