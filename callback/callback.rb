
def caller(cb)
	cb.call('Hello')
end

# 定義方法は複数
proc = Proc.new{|word|
	puts word
}

# lambdaは引数を厳密にチェック
lam = lambda{|word|
	puts word+'(lambda)'
}

caller(proc)
caller(lam)





