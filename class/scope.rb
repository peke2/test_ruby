# 公開範囲の設定
class Hello

    # 宣言の定義が無ければ「public」
    def a
        puts 'called A'
    end

    # 「private」の宣言は続くメソッドで有効
    private
    def b
        puts 'called B'
    end

    def c
        puts 'called C'
    end

    # メソッド定義の行で宣言すると、そのメソッドのみ有効(C#とかっぽくて良いかも？ Ruby2.1から可能になった書き方)
    public def d
        puts 'called D'
    end
end

hello = Hello.new

hello.a
#hello.b    # privateなので外からは呼び出せない
#hello.c    # privateなので外からは呼び出せない
hello.d
