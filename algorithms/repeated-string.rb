# https://www.hackerrank.com/challenges/repeated-string/problem
s = gets.chomp
n = gets.to_i

repeats = (n/s.length).floor * s.count('a')
remaining = s[0...(n%s.length)].count('a')

puts(repeats + remaining)