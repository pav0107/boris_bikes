require 'docking_station'

describe DockingStation do
  
  it {is_expected.to respond_to(:release_bike)}

  it "gets a bike" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.class).to eq(Bike)
  end
  
  it "bike is working" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true) 
  end
end