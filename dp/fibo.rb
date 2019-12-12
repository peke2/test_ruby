# 再帰
def fibo(n)
    return 0 if n <= 0
    return 1 if n == 1
    fibo(n-1) + fibo(n-2)
end

# 再帰(メモ化)
def fibo_memo(n, memo={})
    return 0 if n <= 0
    return 1 if n == 1

    return memo[n] if memo.has_key?(n)
    
    memo[n] = fibo_memo(n-1, memo) + fibo_memo(n-2, memo)
end

# 動的計画法
def fibo_dp(n)
    return 0 if n <= 0

    dp = Array.new(n+1, 0)
    dp[1] = 1

    # 単純なループで計算可能(計算方向は再帰とは逆)
    (2..n).each{|i|
        dp[i] = dp[i-1] + dp[i-2]
    }

    dp[n]
end

# puts fibo(100)
# puts fibo_memo(100)
puts fibo_dp(2)
