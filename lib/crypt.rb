module Crypt
  attr_reader :char_set


  def encrypt(message, shift, decrypt= false)
    @char_set = ("a".."z").to_a << " "
    if decrypt == true
      @char_set = @char_set.reverse
    end
    message = message.split(//)
    new_message = []
    message.each_with_index do |char, index|
      #require 'pry'; binding.pry
      this_shift = shift[index%4]
      new_message << @char_set[(@char_set.index(char) + this_shift)%27]
    end
    new_message.join()
    #require 'pry'; binding.pry
  end

  def decrypt (message, shift)
    self.encrypt(message, shift, true)
  end

end
