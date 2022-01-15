#encrypts and decrypts messages
#require './encrypt'
class Enigma

  def get_keys(key)
    keys = [0, 0, 0, 0]
    keys.each_with_index do |num, index|
      keys[index] = (10*(key[index].to_i))+(key[index+1].to_i)
    end
    require 'pry'; binding.pry
  end



end
