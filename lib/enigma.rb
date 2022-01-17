#encrypts and decrypts messages
require_relative './shifter'
require_relative './crypt'
class Enigma
  include Shifter
  include Crypt


end
