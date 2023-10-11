# https://www.hackerrank.com/challenges/non-divisible-subset/problem
n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp.split.map(&:to_i)

remainders = Array.new(k, 0)

s.each do |num|
    remainders[num % k] += 1
end

count = [remainders[0], 1].min

(1..k / 2).each do |i|
    if i != k - i
        count += [remainders[i], remainders[k - i]].max
    else
        count += 1 if remainders[i] > 0
    end
end

puts(count)