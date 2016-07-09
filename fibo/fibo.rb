#フィボナッチ数列


def fibo(n)
	return 0 if n==0
	return 1 if n==1

	return	fibo(n-2) + fibo(n-1)
end

#40.times{|n|
#	puts "fibo[#{n}]=" + fibo(n).to_s
#}

puts fibo(40)
#real    0m16.097s
#user    0m16.005s
#sys     0m0.077s

