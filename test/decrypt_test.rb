require './test_helper'
require './lib/decrypt'

class DecryptTest < Minitest::Test

  def setup
    @decrypt = Decrypt.new
  end

  def test_it_exists
    assert_instance_of Decrypt, @decrypt
  end

  def test_decrypt_message

    assert_equal "hello", @decrypt.decrypt_message("keder", "02715", "040895")
  end

  def test_decrypt_message_characters

    assert_equal "hello!", @decrypt.decrypt_message("keder!", "02715", "040895")
  end

end
