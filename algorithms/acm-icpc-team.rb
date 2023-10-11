# https://www.hackerrank.com/challenges/acm-icpc-team/problem
n, m = gets.chomp.split.map(&:to_i)
arr = Array.new(n)

(0...n).each do |i|
    arr[i] = gets.chomp
end

max = -1
count = 0

(0...n).each do |i|
    ((i + 1)...n).each do |j|
        s = (arr[i].to_i(2) | arr[j].to_i(2)).to_s(2)
        ones_count = s.count('1')

        if ones_count > max
        max = ones_count
        count = 1
        elsif ones_count == max
        count += 1
        end
    end
end

puts("#{max}\n#{count}")