require 'docking_station'

describe DockingStation do
    it "should release bike from docking station" do
      expect(subject).to respond_to :release_bike
       # subject is an instantiated DockingStation class object
       # implicitly defined version
       # it { is_expected.to respond_to :release_bike }
    end
    it "should create a new bike object" do
     expect(subject.release_bike).to be_a Bike
    end
    it "should release a working bike" do
      expect(Bike.new.working?).to eq true
    end
end
