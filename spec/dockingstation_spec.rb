require 'docking_station'
describe DockingStation do
  it "get a bike" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
  end
  # it 'docks a bike' do
  #   docking_station = DockingStation.new
  #   bike = docking_station.release_bike
  #   docking_station.dock(bike)
  #   expect(docking_station.bike).to eq()
  # end
  it { is_expected.to respond_to(:dock).with(1).argument }
end
