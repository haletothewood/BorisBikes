require 'docking_station'

describe DockingStation do
    it "should release bike from docking station" do
      expect(subject).to respond_to :release_bike
       # subject is an instantiated DockingStation class object
    end
end

# implicitly defined version
# it { is_expected.to respond_to :release_bike }
