
# ブロックの渡し方と instance_exec の使い方を試してみる
# Ruby On Railsのroutes.rbの設定内容が、どうやってRubyで動いているのかの確認
# 
# 【参照元記事】
# Railsのコードを読む ルーティングについて
# https://qiita.com/kkyouhei/items/1203f5aa521c065a7097

class Exec
    # 引数の「&」はブロックであることを示す
    def table(&block)
        # 渡されたブロックを実行する
       instance_exec(&block) 
    end

    def test(w1, w2)
        puts "#{w1} #{w2}"
    end

    def sample(a, b, c, d)
        puts 'total='+(a+b+c+d).to_s
    end

    def func123(text)
        puts "func123(#{text}) called"
    end
end

# 以下はブロック内で関数呼び出しを記述している
# 引数を囲う「()」が無いところは、一瞬、ただのデータの羅列に見えるので理解しにくい
# selfがレシーバのコンテキストになるので、Execクラスのインスタンスにアクセスできる
exe = Exec.new
exe.table do
    test "Hello", "World"
    sample 1,2,3,4
    func123("普通の関数呼び出しの記述")
end


