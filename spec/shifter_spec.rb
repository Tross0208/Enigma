require 'simplecov'
SimpleCov.start
require './lib/shifter'
require './lib/enigma'
require 'date'

RSpec.describe Shifter do
  include Shifter

  it "can get keys" do
    enigma = Enigma.new

    expect(enigma.get_keys("02715")).to be_instance_of(Array)
  end

  it "gets keys" do
    enigma = Enigma.new

    enigma.get_keys("02715")

    expect(enigma.get_keys("02715")).to eq([2, 27, 71, 15])
  end

  it "can get offset" do
    enigma = Enigma.new

    enigma.get_offset("040895")

    expect(enigma.get_offset("040895")).to be_instance_of(Array)
  end
  it "gets offset" do
    enigma = Enigma.new

    enigma.get_offset("040895")

    expect(enigma.get_offset("040895")).to eq([1, 0, 2, 5])
  end
  it "gets shift" do
    enigma = Enigma.new

    expect(enigma.get_shift("02715", "040895")).to eq([3, 27, 73, 20])
  end
  it "gets date" do

  expect(get_date).to be_instance_of(String)
  expect(get_date.length).to eq(6)
  end

  it "validates date" do

  expect(valid_date(false)).to be_instance_of(String)
  expect(valid_date(false).length).to eq(6)

  expect(valid_date("1234")).to be_instance_of(String)
  expect(valid_date("1234").length).to eq(6)
end

it "validates key" do

expect(valid_key(false)).to be_instance_of(String)
expect(valid_key(false).length).to eq(5)

expect(valid_key("1234")).to be_instance_of(String)
expect(valid_key("1234").length).to eq(5)
end


end
