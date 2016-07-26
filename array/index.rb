# Rubyでの配列のインデックスを確認

a = Array.new
a << 'a'
a.push 'bc'
a << 'def'
p a			#["a", "bc", "def"]


a = Array.new
a[0] = 'a'
a[1] = 'bc'
a[3] = 'def'
p a			#["a", "bc", nil, "def"]


#	ハッシュではないので、そもそも以下の指定はできない
#a = Array.new
#a['a'] = 'a'
#a['b'] = 'bc'
#a['c'] = 'def'
#p a


#	ハッシュなら以下の指定が可能
a = Hash.new
a['a'] = 'a'
a['b'] = 'bc'
a['c'] = 'def'
p a			#{"a"=>"a", "b"=>"bc", "c"=>"def"}

#	シンボルを指定している時点で「ハッシュ」確定
a = Hash.new
a[:a] = 'a'
a[:b] = 'bc'
a[:c] = 'def'
p a			#{:a=>"a", :b=>"bc", :c=>"def"}

