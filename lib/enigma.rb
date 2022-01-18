#encrypts and decrypts messages
require_relative './shifter'
require_relative './crypt'
class Enigma
  include Shifter
  include Crypt

  def encrypt(message, key = false, date = false)
    encrypt_hash = {}
    key = valid_key(key)
    date = valid_date(date)
    shift = get_shift(key, date)
    encrypt_hash[:encryption] = encrypt_message(message, shift)
    encrypt_hash[:key] = key
    encrypt_hash[:date] = date

    return encrypt_hash
  end

  def decrypt(message, key, date)
    encrypt_hash = {}
    shift = get_shift(key, date)
    encrypt_hash[:encryption] = decrypt_message(message, shift)
    encrypt_hash[:key] = key
    encrypt_hash[:date] = date

    return encrypt_hash
  end



end
