def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+)* *(=>)/, '\1:')
end

old_syntax = <<~EOS
{
  :name => 'Alice',
  :age => 20,
  :gender => :female
}
EOS

convert_hash_syntax(old_syntax)
