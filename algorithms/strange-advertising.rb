# https://www.hackerrank.com/challenges/strange-advertising/problem
n = gets.to_i
shared = 5
liked = 0
cumm = 0

(1..n).each do
    liked = (shared/2).floor
    cumm += liked
    shared = liked * 3
end

puts(cumm)