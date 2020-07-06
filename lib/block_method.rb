numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
p new_numbers

# map/collect
numbers = [1, 2, 3, 4, 5]
new_numbers = []
#ブロックの戻り値が新しい各要素になる
new_numbers = numbers.map { |n| n * 10 }
p new_numbers

# select/find_all/reject
numbers = [1, 2, 3, 4, 5, 6]
#ブロックの戻り値が真になった要素だけ集められるなる
even_numbers = numbers.select { |n| n.even? }
p even_numbers

numbers = [1, 2, 3, 4, 5, 6]
#ブロックの戻り値が真になった要素だけ集められるなる
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiples_of_three

# select/find_all/reject
numbers = [1, 2, 3, 4, 5, 6]
#ブロックの戻り値が最初に真になった要素だけ返す
even_numbers = numbers.select { |n| n.even? }
p even_numbers

# inject/reduce
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, s| result + s }
p sum

p ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun') { |result, n| result + n }

# &:メソッド名　10.5.2に詳細あり
p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
# 1.ブロックの引数が1個だけ
# 2.ブロックの中で呼び出すメソッドには引数がない
# 3.ブロックの中では、ブロックの引数に対してメソッドを一回呼び出す以外の処理がない
p [1, 2, 3, 4, 5, 6].select(&:odd?)

# Range object
# 最後の値含む
p (1..5).class
range = 1..5
p range.include?(5)
p ('a'..'e').include?('e')
# 最後の値含まない
p (1...5).class
range = 1...5
p range.include?(5)
p ('a'...'e').include?('e')

# 不等号判定を範囲オブジェクトでリファクタリング
def liquid?(temperature)
  # 0度以上100度未満であれば液体と判定したい
  0 <= temperature && temperature <100
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

def liquid?(temperature)
  # 0度以上100度未満であれば液体と判定したい
  (0...100).include?(temperature)
end
p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

# caseとの組み合わせ
def charge(age)
  case age
    # 0-5才まで
  when 0..5
    0
  when 6..12
    300 
  when 13..18
    600
  else
    1000
  end
end

p charge(3)
p charge(8)
p charge(18)
p charge(25)

# 値の連続する配列の作成
p (1..5).to_a
p [*1..5]
p (1...5).to_a
p [*1...5]
p ('bad'..'bag').to_a
p [*'bad'...'bah']

# 繰り返し処理の応用
numbers = []
# 1から10まで　2つ　飛ばしで繰り返しです処理を行う
(1..10).step(2) {|n| numbers << n }
p numbers

# 4.6 rjustメソッド
p '0'.rjust(5)
p '0'.rjust(5,'0')
p '0'.rjust(5, '_')
p 0.to_s(16).rjsut(2, '0')