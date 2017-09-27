require 'docking_station'

describe DockingStation do
    it "should release bike from docking station" do
      expect(subject).to respond_to :release_bike
       # subject is an instantiated DockingStation class object
       # implicitly defined version
       # it { is_expected.to respond_to :release_bike }
    end
    it "should release a working bike" do
      expect(Bike.new.working?).to eq true
    end
    it "should dock a bike" do
      bike = Bike.new # setting up the bike object for the test
      expect(subject.dock(bike)).to eq bike
    end
    describe '#release_bike' do
      it "should create a new bike object" do
      expect {subject.release_bike}.to raise_error "Sorry, no bikes!"
      end
    end
end
