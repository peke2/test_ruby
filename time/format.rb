require 'time'

#フォーマット指定
#ISO8601形式で出力する
time = Time.parse("2015-07-15 20:45:00 +0900")

#「2015-07-15T20:45:00+09:00」の形で出力される
puts time.iso8601

puts time.localtime("+00:00").iso8601
puts time.localtime("+12:00").iso8601
