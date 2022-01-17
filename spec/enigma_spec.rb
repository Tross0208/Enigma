require 'simplecov'
SimpleCov.start
require './lib/enigma'
require 'date'

RSpec.describe Enigma do
  it "exists" do
    enigma = Enigma.new

    expect(enigma).to be_instance_of(Enigma)
  end

  it "decrypts" do
    enigma = Enigma.new

    expect(enigma.encrypt("hello world end", "08304", "291018")).to eq({encryption: "vjqtbeaweqihssi", key: "08304", date: "291018"})
  end


end
