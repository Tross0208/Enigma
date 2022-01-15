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

    enigma.get_keys("02715")

    expect(keys).to be_instance_of(Array)
  end

  it "gets keys" do
    enigma = Enigma.new

    enigma.get_keys("02715")

    expect(keys).to eq([2, 27, 71, 15])
  end


end
