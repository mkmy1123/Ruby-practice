require 'minitest/autorun'
require_relative '../lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, before: :m, after: :in)
    assert_equal 0.38, convert_length(15, before: :in, after: :m)
    assert_equal 10670.73, convert_length(35000, before: :ft, after: :m)
  end
end
