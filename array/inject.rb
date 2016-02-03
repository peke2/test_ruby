# 配列の要素の繰り返し計算

arr = [1,2,3,4,5,6]

# 前の計算の値と今の値を計算
# ブロック内の結果が次の計算に渡される
p arr.inject{|sum, n|sum+n}

# 各要素の加算、乗算を以下でも表現可能
p arr.inject(:+)
p arr.inject(:*)
