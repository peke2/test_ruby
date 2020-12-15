# 親のコンストラクタから子のメソッドを呼び出すサンプルに違和感を覚えたので確認してみた
# 違和感1: オーバーライド可能なメソッドを定義していないのに呼び出している -> メソッドは親に明示されるものでは？
# 違和感2: 親のコンストラクタの中から子供のメソッドを呼び出している -> C++の時、コンストラクタは「親->子」の順番で呼ばれるので、初期化されていない子供のメソッドを親から読んじゃダメだったはず

class Root
    def initialize
        p getValue
    end

    # これを定義していても子供側でオーバーライドできるし、無くても良い
    # hasを表すのに違和感があるが、interface的な何かを使うべき？
    # def getValue
    #     789
    # end
end

class Leaf < Root
    attr_accessor :value

    def initialize
    # def initialize2   # オーバーライドしなければ、自動的に親のコンストラクタが呼ばれる
            @value = 123
        # コンストラクタの呼び出し位置は自分で設定できるので、親のコンストラクタから子のメソッドも呼べる
        # コンストラクタでもテンプレートパターンが使えるのは良さそうだが、こんな自由はどうなの？
        super
    end

    def getValue
        @value
        # 定数を返すだけならどのタイミングでも大丈夫
        # 12345
    end
end

Leaf.new