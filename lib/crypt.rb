module Crypt
  #attr_reader :char_set


  def encrypt_message(message, shift, decrypt= false)
    @char_set = ("a".."z").to_a << " "
    if decrypt == true
      @char_set = @char_set.reverse
    end
    message = message.split(//)
    new_message = []
    message.each_with_index do |char, index|
      if @char_set.include?(char)
        this_shift = shift[index%4]
        new_message << @char_set[(@char_set.index(char) + this_shift)%27]
      end
    end
    new_message.join()
  end

  def decrypt_message(message, shift)
    self.encrypt_message(message, shift, true)
  end
    #require 'pry'; binding.pry
end
