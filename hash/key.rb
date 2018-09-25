# ハッシュのキーに配列を使用した場合の挙動

key = [1,2,3]
# ハッシュのキーに配列を指定 -> 参照がキーになる
hash = {key=>'hello'}

puts "1:key=#{key} -> "+ hash[[1,2,3]]

# 登録されているキー(参照)の内容を変える
key[1] = 99
puts "2:key=#{key} -> "+ hash[[1,2,3]]	# nilへの参照 -> キーが無くなった

