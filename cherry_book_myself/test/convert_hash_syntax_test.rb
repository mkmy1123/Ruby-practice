# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def setup
    @old_syntax = <<~OLD
      {
        :name => 'Alice',
        :age => 20,
        :gender => :female
      }
    OLD
    @new_syntax = <<~NEW
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    NEW
  end

  def test_convert_hash_syntax
    assert_equal @new_syntax, convert_hash_syntax(@old_syntax)
  end
end
