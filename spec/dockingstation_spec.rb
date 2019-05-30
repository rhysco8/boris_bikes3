require 'docking_station'
describe DockingStation do
  it "get a bike" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end
  it 'docks a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
  it { is_expected.to respond_to(:dock).with(1).argument }
  it "doesn't release bike if empty" do
    expect { subject.release_bike }.to raise_error("No bike")
  end
  it "doesn't accept bike if full" do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
  end
end
