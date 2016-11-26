#	配列初期化時に引っかかりやすそうなところを確認する

a = Array.new(5, 1)
p a		#[1, 1, 1, 1, 1]
a[1] = 5
p a		#[1, 5, 1, 1, 1]

b = Array.new(5, 'a')
p b		#["a", "a", "a", "a", "a"]
b[1] = 'b'
p b		#["a", "b", "a", "a", "a"]


#	オブジェクトや配列で初期化した場合、同じ参照で初期化される
#	1つを書き換えると、配列内のデータが全部変わる
#	たまにやってしまうので注意！！！

c = Array.new(5, [1,2,3])
p c		#[[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]
c[1][1] = 4
p c		#[[1, 4, 3], [1, 4, 3], [1, 4, 3], [1, 4, 3], [1, 4, 3]]

class Test
	def initialize
		@param = 'Hello'
	end

	attr_accessor :param
end

d = Array.new(5, Test.new)
p d		#[#<Test:0x0000060041e708 @param="Hello">, #<Test:0x0000060041e708 @param="Hello">, #<Test:0x0000060041e708 @param="Hello">, #<Test:0x0000060041e708 @param="Hello">, #<Test:0x0000060041e708 @param="Hello">]

d[1].param = 'Good morning'
p d		#[#<Test:0x0000060041e708 @param="Good morning">, #<Test:0x0000060041e708 @param="Good morning">, #<Test:0x0000060041e708 @param="Good morning">, #<Test:0x0000060041e708 @param="Good morning">, #<Test:0x0000060041e708 @param="Good morning">]
