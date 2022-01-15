require 'simplecov'
SimpleCov.start
require './lib/enigma'
require 'date'

RSpec.describe Enigma do
  it "exists" do
    enigma = Enigma.new

    expect(enigma).to be_instance_of(Enigma)
  end

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


end
