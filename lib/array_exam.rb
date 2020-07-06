#　配列　位置（添え字）　長さ　2 3 4
a = [1, 2, 3, 4, 5]
p a[1,3]
# 添え字の複数指定　1 3 5
p a.values_at(0, 2, 4)
# [配列の長さ-1]で最後の要素を取得する　5
p a[a.size - 1]

# 最後の要素を取得する 5
p a[-1]
# 最後から２番目の要素を取得する 4
p a[-2]
# 最後から2番目の要素から2つの要素を取得する 4 5
p a[-2, 2]

# lastメソッド  5  4 5
p a.last 
p a.last(2)
# firstメソッド  1  1 2
p a.first 
p a.first(2)

# 要素の置き換え -10 2 3 4 5
a[-3] = -10
p a
# 二つ目から３要素を置き換える　1 100 5
a = [1, 2, 3, 4, 5]
a[1, 3] = 100
p a

# push　メソッド  1   1 2 3
a =[]
p a.push(1)
p a.push(2, 3)

# delete メソッド  2 [1,3,1,3]  存在しないとnil [1,3,1,3]
a = [1, 2, 3, 1, 2, 3]
p a.delete(2)
p a
p a.delete(5)
p a

# concat 破壊的 [1,2,3]
a = [1]
b = [2, 3]
p a.concat(b)
# 非破壊的
a = [1]
b = [2, 3]
p a + b

# 重複しない和集合  [1,2,3,4,5]
a = [1, 2, 3]
b = [3, 4, 5]
p a | b
# 差集合 [1, 2]
p a - b 
# 積集合 [3]
p a & b

# set　クラス
require 'set'
 a = Set.new([1, 2, 3])
 b = Set.new([3, 4, 5])
p a | b
p a - b 
p a & b

e, f = 100, 200, 300
p e 
p f 

e, *f = 100, 200, 300
p e 
p f 

# 一つの配列を要素として追加する  [1, [2, 3]]
a = [1]
b=[2, 3]
p a.push(b)

# 一つの配列を複数の引数として追加する [1, 2, 3]
# *を使うと展開されるイメージ
a = [1]
b=[2, 3]
p a.push(*b)

# 左辺 == 右辺　で等しいかチェック　　true  false
p [1, 2] == [1, 2]
p [1, 2, 3] == [1, 2]

# 文字列の配列　%記法 ['apple', 'melon', 'orange']
p ['apple', 'melon', 'orange']
p %w!apple melon orange!
p %w(apple melon orange)

# スペース　改行、タブ文字　
p %w(big\) apple small\ melon orange)

prefix = 'This is'
p %W(#{prefix}\ an\ apple small\nmelon, orange)

# 文字列を配列に変換する　分解のchars 区切り文字で分割するsplit
p 'Ruby'.chars 
p 'a,b,c,d'.split(',')

# Array.new(要素数, 初期値)　又は　Array.new(要素数) {初期値をブロックによる指定}
a = Array.new(5, 0)
p a 
a = Array.new(10) { |n| n % 3 + 1 }
p a 

# 配列に初期値を設定する場合の注意点
a = Array.new(5, 'exam')
p a
str = a[0]
p str
str.upcase!
p a 

a = Array.new(5) { 'exam' }
p a
str = a[0]
p str
str.upcase!
p a 

# 添え字付きの繰り返し処理
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index {|fruits, i| puts "#{i}: #{fruits}" }

# with_index メソッドを使った繰り返し処理
fruits = ['apple', 'orange', 'melon']
p fruits.map.with_index {|fruit, i| "#{i}: #{fruit}" }

fruits = ['apple', 'orange', 'melon']
p fruits.delete_if.with_index {|fruit, i| fruit.include?('a') && i.odd? }

# 添え字を0以外の数値から開始させる 1: 2: 3:
fruits = ['apple', 'orange', 'melon']
# eachで繰り返しつつ1から始まる
fruits.each.with_index(1) {|fruits, i| puts "#{i}: #{fruits}" }
# mapで処理しつつ10かr始まる
p fruits.map.with_index(10) {|fruit, i| "#{i}: #{fruit}" }

# 配列がブロック引数に渡される場合
dimentions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
# 面積の試算結果を格納する配列
areas = []
# 配列の要素分だけブロック引数を用意すると、各要素の値が別々の変数に格納される
dimentions.each do |length, width|
  areas << length * width
end 
p areas

# ブロック引数を()で囲んで配列の要素を別々の引数として受け取る
dimentions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
dimentions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i:#{i} "
end

# ブロックの後ろにメソッドを用いる
names = ['田中', '佐藤', '鈴木']
p names.map {|name| "#{name}さん" }.join('と') 