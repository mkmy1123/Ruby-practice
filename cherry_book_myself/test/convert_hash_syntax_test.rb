require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~EOS
    {
      :name => 'Alice',
      :age => 20,
      :gender => :female
    }
    EOS
    new_syntax = <<~EOS
    {
      name: 'Alice',
      age: 20,
      gender: :female
    }
    EOS
    assert_equal new_syntax, convert_hash_syntax(old_syntax)
  end
end
