require 'simplecov'
SimpleCov.start
require './lib/shifter'
require './lib/enigma'
require './lib/crypt'
require 'date'

RSpec.describe Crypt do

  it "encrypts message" do
    enigma = Enigma.new

    expect(enigma.encrypt_message("hello world", [3, 27, 73, 20])).to eq("keder ohulw")
  end

  it "encrypts uppercase message" do
    enigma = Enigma.new

    expect(enigma.encrypt_message("HELLO WORLD", [3, 27, 73, 20])).to eq("keder ohulw")
  end

  it "ignores other chars in message" do
    enigma = Enigma.new

    expect(enigma.encrypt_message("HELLO WORLD!", [3, 27, 73, 20])).to eq("keder ohulw!")
  end

  it "decrypts message" do
    enigma = Enigma.new

    expect(enigma.decrypt_message("keder ohulw", [3, 27, 73, 20])).to eq("hello world")
  end

end
