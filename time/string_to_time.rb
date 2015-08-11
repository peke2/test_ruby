require 'time'

start_at = "2015-07-14 19:50:00 +0900"
end_at   = "2015-07-14 20:30:00 +0900"

time_st = Time.parse(start_at)
time_ed = Time.parse(end_at)
puts "year  =" + time_st.year.to_s
puts "month =" + time_st.mon.to_s
puts "day   =" + time_st.day.to_s
puts "hour =" + time_st.hour.to_s
puts "min  =" + time_st.min.to_s
puts "sec  =" + time_st.sec.to_s

puts "開始秒=>"+time_st.to_i.to_s
puts "終了秒=>"+time_ed.to_i.to_s
puts "差分="+(time_ed - time_st).to_i.to_s+"秒"
