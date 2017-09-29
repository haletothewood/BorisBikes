require 'bike'

describe Bike do
  it "should allow a user to report a broken bike" do
    subject.report_broken
    expect(subject).to be_broken
  end
end
