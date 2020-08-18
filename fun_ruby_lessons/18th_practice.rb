# 18章はFile / Dir(ファイル / ディレクトリ) クラス
require "find"

# 1. Rubyが利用するライブラリのファイル名を出力するメソッド
def print_libraries
  $:.each do |path|
    next unless FileTest.directory?(path)
    Dir.open(path) do |dir|
      dir.each do |name|
        if name =~ /\.rb$/i
          puts name
        end
      end
    end
  end
end

print_libraries

# 2. UnixコマンドのduをRubyで作る
def du(path)
  result = 0
  Find.find(path){|f|
    if File.file?(f)
      result += File.size(f)
    end
  }
  printf("%d %s\n", result, path)
  return result
end

du(ARGV[0] || ".")
