require './module/encryptable'

class Decrypt
  include Encryptable

  def decrypt_message(ciphertext, key, date)
    characters = ("a".."z").to_a << " "
    shift = number_shift(key, date)
    split_message = message_breakdown(ciphertext)
    new_message = []
    split_message.map do |letter|
      if characters.include?(letter)
        new_character = characters.rotate(characters.index(letter) - shift[0])
        new_message << new_character[0]
        shift.rotate!
      else
        new_message << letter
      end
    end
    new_message.join
  end

end
