# https://www.hackerrank.com/challenges/circular-array-rotation/problem
n, k, q = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

q.times do
    puts(arr[(n - k + gets.to_i) % n])
end