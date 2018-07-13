
# $ gem install roo

require 'roo'

xlsx = Roo::Excelx.new('./test.xlsx')
xlsx.each_with_pagename{|name, sheet|
	puts "シート名:"+name
	puts "row["+sheet.first_row.to_s+"-"+sheet.last_row.to_s+"]"
	puts "column["+sheet.first_column.to_s+"-"+sheet.last_column.to_s+"]"
}