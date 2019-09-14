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

end
