require './test_helper'
require './lib/enigma'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_encrypt_message

    assert_equal "keder", @encrypt.encrypt_message("Hello", "02715", "040895")
  end




end
