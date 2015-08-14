require 'time'

#	時間関連の計算確認

#	指定された分単位に調整する

def adjustTimeMin(time, step_min)
	add_sec = ((time.min + step_min-1)/step_min*step_min - time.min) * 60
	time + add_sec
end

step_min = 15
time_list = [
	"2015-07-14 19:50:00 +0900",
	"2015-07-14 23:53:00 +0900",	#境界
	"2015-07-14 10:00:00 +0900",	#変わらない
	"2015-07-14 09:23:45 +0900",	#秒の部分は変わらない(面倒なので対応していない)
	"2015-07-14 04:29:00 +0900",	#境界2
	"2015-07-14 04:16:00 +0900",	#境界3
]

time_list.each{|t|
	time = Time.parse(t)
	adjusted_time = adjustTimeMin(time, step_min)

	puts time
	puts "+"+step_min.to_s+"min"
	puts adjusted_time
	puts "--------"
}

