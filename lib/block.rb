numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
p sum

a = [1, 2, 3, 1, 2, 3]
a.delete(2)
p a

numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum