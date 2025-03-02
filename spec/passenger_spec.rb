require './lib/passenger'

RSpec.describe Passenger do
  it "exists" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie).to be_a(Passenger)
    expect(taylor).to be_a(Passenger)
  end

  it "has readable attributes" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it "can determine whether a person is an adult" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it "can be a driver" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.driver?).to eq(false)

    charlie.drive

    expect(charlie.driver?).to eq(true)
  end
end