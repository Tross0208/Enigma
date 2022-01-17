require 'simplecov'
SimpleCov.start
require './lib/shifter'
require './lib/enigma'
require './lib/crypt'
require 'date'

RSpec.describe Crypt do

  it "encrypts message" do
    enigma = Enigma.new

    expect(enigma.encrypt("hello world", [3, 27, 73, 20])).to eq("keder ohulw")
  end

end
