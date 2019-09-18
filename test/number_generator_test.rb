require './test_helper'
require './lib/number_generator'

class NumberGeneratorTest < Minitest::Test

  def test_random_number
    NumberGenerator.stubs(:create_key).returns "02715"

    assert_equal "02715", NumberGenerator.create_key
    assert_equal 5, NumberGenerator.create_key.length
  end

end
