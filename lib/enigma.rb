#encrypts and decrypts messages
#require './encrypt'
class Enigma

  def get_keys(key)
    keys = [0, 0, 0, 0]
    keys.each_with_index do |num, index|
      keys[index] = (10*(key[index].to_i))+(key[index+1].to_i)
    end
    return keys
  end

  def get_offset(date)
    square_date = (date.to_i*date.to_i).to_s
    square_date = square_date.split("")
    while square_date.length > 4 do
      square_date.delete_at(0)
    end
    square_date.map {|num| num.to_i}
  end
  #require 'pry'; binding.pry
end