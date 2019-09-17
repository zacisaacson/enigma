require './module/encryptable'

class Encrypt
  include Encryptable

  def encrypt_message(message, key, date)
    characters = ("a".."z").to_a << " "
    shift = number_shift(key, date)
    split_message = message_breakdown(message)
    new_message = []
    split_message.map do |letter|
      if characters.include?(letter)
        new_character = characters.rotate(characters.index(letter) + shift[0])
        new_message << new_character[0]
        shift.rotate!
      else
        new_message << letter
      end
    end
    new_message.join
  end
end
