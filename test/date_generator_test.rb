require 'minitest/autorun'
require 'minitest/pride'
require './lib/date_generator'

class DateGeneratorTest < Minitest::Test

def test_date_generator
  assert_equal "140919", DateGenerator.create_date 
end



end
