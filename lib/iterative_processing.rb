# Integer クラスのtimes メソッド
sum = 0
5.times { |n| sum += n }
p sum

# Integer クラス　upto, downto ある値mからnまで1つずつ増やしたり減らしたりする　
a = []
10.upto(14) {|n| a << n }
p a
a = []
14.downto(10) {|n| a << n }
p a

# Numeric クラス　step メソッド m ~ nmまで x 個ずつふやす
a = []
1.step(10, 2) {|n| a << n }
p a
a = []
10.step(1, -2) {|n| a << n }
p a

# while (条件：真)
a = []
while a.size < 5
  a << 1
end
p a
# 1行で書いた場合
a = []
a << 1 while a.size < 5
p a

# until (条件：偽)
a =[10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
p a 

a =[10, 20, 30, 40, 50]
a.delete_at(-1) until a.size <= 3
p a 

# for 配列やハッシュを繰り返しするとき
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers 
  sum += n
end
p sum

# loop メソッド　break　処理
numbers = [1, 2, 3, 4, 5]
loop do 
  n = numbers.sample
  puts n
  break if n == 5
end
# while で書き換え
while true
  n = numbers.sample
  puts n
  break if n == 5
end

# Kernel モジュールの throw メソッドと catch メソッド　（例外処理ではない）
fruits = ['apple', 'orange', 'melon']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit =='orange' && n == 3
        # catch と一致しないタグを throw するとエラーになるので注意
        throw :done
      end
    end
  end
end

# next 中断して次の繰り返しにすすむ
numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  next if n.even?
  puts n
end

# redo その回の最初に戻り繰り返し処理をする
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ =>"
  answer = 'いいえ'
  puts answer
  count += 1
  # やり直しは2回までにする
  redo if answer != 'はい' && count < 2
  count = 0
end