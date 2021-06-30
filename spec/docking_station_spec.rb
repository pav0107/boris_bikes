require 'docking_station'

describe DockingStation do

  it "gets a bike" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.class).to eq(Bike)
  end
  
  it "bike is working" do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true) 
  end

  it {is_expected.to respond_to(:dock).with(1).argument }

  it {is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end