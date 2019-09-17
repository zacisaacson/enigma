require './test_helper'
require './lib/number_generator'

class NumberGeneratorTest < Minitest::Test


#Mock and Stubs for create_key
def test_random_number

  assert_equal 5, Number_Generator.create_key.length
end



end
