#フィボナッチ数列
#メモ化で高速化


def fibo(n, memo)
	return 0 if n==0
	return 1 if n==1

	a = fibo(n-2, memo) if (a = memo[n-2]) < 0
	b = fibo(n-1, memo) if (b = memo[n-1]) < 0

	memo[n] = a + b

	return	 a + b
end


fibo_n = 40

memo = Array.new(fibo_n+1, -1)
#	固定の数値は先にメモとして残しておく
memo[0] = 0
memo[1] = 1

#fibo_n.times{|n|
#	puts "fibo[#{n}]=" + fibo(n, memo).to_s
#}

puts fibo(40, memo)
#real    0m0.106s		通常の再帰のみだと16秒くらいかかるところを1秒未満で算出
#user    0m0.046s
#sys     0m0.046s

