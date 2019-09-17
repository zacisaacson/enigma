require './lib/date_generator'
require './lib/number_generator'
require './lib/encrypt'
require './lib/decrypt'

class Enigma

  def encrypt(message, key = NumberGenerator.create_key, date = DateGenerator.create_date)
      {
        encryption: Encrypt.encrypt_message(message, key, date),
        key: key,
        date: date
      }

  end

end
