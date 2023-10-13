# https://www.hackerrank.com/challenges/beautiful-triplets/problem
n, d = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

ans = 0

arr.each do |i|
    ans += 1 if arr.include?(i + d) && arr.include?(i + (2 * d))
end

puts(ans)