# クラスメソッドの定義

class Hello
    # クラスメソッドはメソッド名の前に「self.」をつける
    def self.getWord
        'Good morning'
    end

    # 以下の書き方だと「self.」は省略可能
    class << self
        def say
            puts 'Hello'
        end

        # 複数のメソッドを「self.」無しで定義可能
        def exec
            puts 'Executed'
        end
    end

end

Hello.say
puts Hello.getWord
