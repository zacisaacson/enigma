require './test_helper'
require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end


  def test_encryption
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_encryption_without_date
    expected = {
      encryption: "njhau",
      key: "02715",
      date: "170919"
    }

    DateGenerator.stubs(:create_date).returns "170919"
    
    assert_equal expected, @enigma.encrypt("hello", "02715")
  end

  def test_encrypt_only_message
    expected = {
      encryption: "njhau",
      key: "02715",
      date: "170919"
    }

    NumberGenerator.stubs(:create_key).returns "02715"

    assert_equal expected, @enigma.encrypt("hello")
  end

end
