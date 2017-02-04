#	使い方が良くわからなかったのでとにかく使ってみる

#	指定したものを返す
def func
	yield 1, 2, 3
end

class Test
	def initialize(arr)
		@arr = arr
	end

	#	実際に each を実装
	def each
		cnt = @arr.size
		cnt.times{|i|
			#	内容を列挙して1つずつ yield で返す
			yield @arr[i]
		}
	end
end

func{|i,j,k| p i,j,k}


arr = Array.new
arr << 'yield'
arr << 'の使い方を'
arr << '使って'
arr << '確認する'

test = Test.new(arr)

test.each{|s|
	puts s
}
