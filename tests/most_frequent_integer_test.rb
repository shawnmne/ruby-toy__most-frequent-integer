require 'test_helper'
require 'most_frequent_integer'

class MultiplyTest < Minitest::Test
  def test_base_case
    nums = [1, 1, 2] #mode is 1
    result = find_most_frequent_integer(nums)

    assert_equal(1, result)
  end

  def test_no_mode
    nums = [1, 2, 3, 4] # no mode
    result = find_most_frequent_integer(nums)

    assert_equal(nil, result)
  end

  def test_empty_set
    nums = []
    result = find_most_frequent_integer(nums)

    assert_equal(nil, result)
  end

  def test_two_modes
    nums = [1, 1, 2, 2, 3] #mode is 1 or 2, thus: nil
    result = find_most_frequent_integer(nums)

    assert_equal(nil, result)
  end
end
