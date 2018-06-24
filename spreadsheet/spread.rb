# Excelを試す

#require 'matrix'
#require "bigdecimal"
require 'spreadsheet'

#BigDecimal::limit(0)

book = Spreadsheet.open("test.xls")

puts 'シート数='+book.sheet_count.to_s

sheet = book.worksheet('test_sheet')
puts 'カラム数='+ sheet.column_count.to_s

puts '[0,0]='+sheet[0,0].to_s
puts '[0,1]='+sheet[0,1].to_s
puts '[1,0]='+sheet[1,0].to_s
