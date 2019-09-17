require './test_helper'
require './module/encryptable'


class EncryptableTest < Minitest::Test
  include Encryptable

  def test_number_breakdown
    assert_equal ["02", "27", "71", "15"], number_breakdown("02715")
  end

  def test_date_breakdown
    assert_equal ["1", "0", "2", "5"], date_breakdown("040895")
  end

  def test_shift
    assert_equal [3, 27, 73, 20], shift("02715", "040895")
  end



end
