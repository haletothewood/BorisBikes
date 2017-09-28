require './lib/bike.rb'

class DockingStation

DEFAULT_CAPACITY = 20
attr_accessor :bikes, :capacity

  def initialize
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
    @bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.length == 0
  end

end
