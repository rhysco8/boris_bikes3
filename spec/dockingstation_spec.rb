require 'docking_station'
describe DockingStation do
  it "get a bike" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
  end
end
