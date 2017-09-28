require './lib/bike.rb'

class DockingStation

attr_accessor :bikes, :capacity

  def initialize (capacity = 20)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "Sorry, no bikes!" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full!" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length == 20
  end

  def empty?
    @bikes.length == 0
  end

end
