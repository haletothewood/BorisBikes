require 'docking_station'

describe DockingStation do

  it "should allow maintainer to set its capacity" do
    expect(DockingStation.new(10).capacity).to eq 10
  end

    it "can store 0 to 20 bikes" do
      expect(subject.bikes).to eq []
    end

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
        20.times {subject.dock(Bike.new)}
        expect { subject.dock(Bike.new) }.to raise_error "Docking station full!" if subject.bikes.length == DockingStation::DEFAULT_CAPACITY
      end
    end
    describe '#release_bike' do
      it "raises an error when there are no bikes available" do
      expect {subject.release_bike}.to raise_error "Sorry, no bikes!" if subject.bikes.length == 0
      end

      it "reduces the number of bikes stored by 1" do
        subject.dock(Bike.new)
        before = subject.bikes.length
        subject.release_bike
        expect(subject.bikes.length).to eq (before - 1)
      end
    end
end
