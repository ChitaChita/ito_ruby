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
# ブロックの中で呼び出すメソッドには引数がない
# ブロックの中では、ブロックの引数に対してメソッドを一回呼び出す以外の処理がない
p [1, 2, 3, 4, 5, 6].select { &:odd? }
