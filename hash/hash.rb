
#	ハッシュに配列を対応付けてそこにデータを追加してみる
hash = Hash.new
hash["key"] = Array.new

p hash

value = hash["key"]

value << "aaa"
value << "bbb"

p hash

