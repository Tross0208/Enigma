module Shifter

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

  def get_shift(key, date)
    shift = []
    keys =  self.get_keys(key)
    offset = self.get_offset(date)
    i = 0
    while i < 4 do
      shift << (keys[i]+offset[i])
      i +=1
    end
    return shift
  end

  def valid_date(date)
    if (date == false) || (date.length !=6)
      date = self.get_date
    end
    return date
  end

  def get_date
    date = Date.today
    date.strftime('%d%m%y')
  end

  def valid_key(key)
    if key == false
      key = rand(0..99999).to_s
    end
    while key.length < 5 do
      key = key.prepend('0')
    end
    return key
  end

end
