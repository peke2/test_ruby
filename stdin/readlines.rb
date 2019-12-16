# 	コマンドラインから直接入力する場合
#	CTRL+Z (または CTRL+D) 後、ENTERで入力終了(DOS窓)
#	Cygwinのシェルからはどちらもダメ(CTRL+Zで実行停止、CTRL+Dが無効なうえ、実行停止後シェルが閉じる)

#	gets だと一行毎に値が取得可能だが、
#	readlines は入力が配列でまとめて帰ってくる
lines = readlines
lines.each{|line|
	puts line.chomp()
}
