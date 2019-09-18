require './lib/date_generator'
require './lib/number_generator'
require './lib/encrypt'
require './lib/decrypt'

class Enigma

  def initialize
    @encryption = Encrypt.new
    @decryption = Decrypt.new
  end

  def encrypt(message, key = NumberGenerator.create_key, date = DateGenerator.create_date)
      {
        encryption: @encryption.encrypt_message(message, key, date),
        key: key,
        date: date
      }
  end

  def decrypt(ciphertext, key, date = DateGenerator.create_date)
      {
        decryption: @decryption.decrypt_message(ciphertext, key, date),
        key: key,
        date: date
      }
  end
  
end
