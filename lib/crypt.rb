module Crypt
  attr_reader :char_set


  def encrypt(message, shift)
    @char_set = ("a".."z").to_a << " "
    message = message.split(//)
    new_message = []
    message.each_with_index do |char, index|
      this_shift = shift[index%4]
      new_message << @char_set[(@char_set.index(char) + this_shift)%27]
    end
    new_message.join()
    #require 'pry'; binding.pry
  end

end
