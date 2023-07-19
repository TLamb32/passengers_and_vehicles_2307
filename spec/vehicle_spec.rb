require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  it "exists and has readable attributes" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  

    expect(vehicle).to be_a(Vehicle)

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it "can determine whether the vehicle is speeding" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.speeding?).to eq(false)

    vehicle.speed

    expect(vehicle.speeding?).to eq(true)
  end
end