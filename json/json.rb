require 'json'

#	JSONの読み書き

json = '
	{
		"0":[
			"A"
		],
		"1":[
			"B",
			"C"
		],
		"2":[
			"D",
			"E",
			"F"
		]
	}
'


data = JSON.load(json)
#	読み込まれたオブジェクトの内容確認
p data
#	オブジェクトからJSON文字列の出力(そのまま出してみる)
puts JSON.generate(data)

#	オブジェクトを作成してそこからJSON文字列を出力
obj = {"A"=>[1,2,3], "B"=>[4,5], "C"=>[6], "7"=>[8,9,10]}
puts JSON.generate(obj)
