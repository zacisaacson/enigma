require 'minitest/autorun'
require 'minitest/pride'
require './lib/number_generator'

class NumberGeneratorTest < Minitest::Test


#Mock and Stubs for create_key
def test_random_number
  random = mock
  random.expects(:key).returns("12345")
  assert_equal 5, Number_Generator.create_key.length
  assert_equal "12345", random.Number_Generator.create_key
end



end
