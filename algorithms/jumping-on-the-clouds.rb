# https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem
n = gets.chomp.to_i
clouds = gets.chomp.split.map(&:to_i)

pos, count = 0, 0

while pos < n - 1
    if clouds[pos + 2] == 0
        pos += 2
    else
        pos += 1
    end
    count += 1
end

puts(count)