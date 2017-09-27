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
    describe '#dock' do
      it "raises and error when full" do
        # as capacity is 1 we need to instantiate a bike first before running test
        subject.dock(Bike.new)
        expect { subject.dock(Bike.new) }.to raise_error "Docking station full!"
      end
    end
    describe '#release_bike' do
      it "raises an error when there are no bikes available" do
      expect {subject.release_bike}.to raise_error "Sorry, no bikes!"
      end
    end
end
