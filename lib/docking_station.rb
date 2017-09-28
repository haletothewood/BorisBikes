require './lib/bike.rb'

class DockingStation

attr_accessor :bikes, :capacity

  def initialize (capacity = 20)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "Sorry, no bikes!" if @bikes.length == 0
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full!" if @bikes.length == 20
    @bikes << bike
  end

end
