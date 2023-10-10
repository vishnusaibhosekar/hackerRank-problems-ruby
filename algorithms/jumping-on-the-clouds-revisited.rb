# https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem
n, k = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

e = 100
curr = 0

loop do
    e -= 1
    e -= 2 if c[curr] == 1
    curr = (curr + k) % n
    break if curr == 0
end

puts(e)