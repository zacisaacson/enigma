require './test_helper'
require './lib/date_generator'

class DateGeneratorTest < Minitest::Test

  def test_date_generator

    DateGenerator.stubs(:create_date).returns "140919"

    assert_equal "140919", DateGenerator.create_date
  end

end
