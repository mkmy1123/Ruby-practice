# frozen_string_literal: true

def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+)* *(=>)/, '\1:')
end

old_syntax = <<~OLD
  {
    :name => 'Alice',
    :age => 20,
    :gender => :female
  }
OLD

convert_hash_syntax(old_syntax)
