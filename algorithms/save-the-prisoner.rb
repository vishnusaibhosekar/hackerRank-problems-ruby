# https://www.hackerrank.com/challenges/save-the-prisoner/problem
t = gets.to_i

t.times do
    n, m, s = gets.chomp.split.map(&:to_i)
    puts (s + m - 2) % n + 1
end