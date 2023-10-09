# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

min, max = arr[0], arr[0]
minc, maxc = 0, 0

(1..n - 1).each do |i|
    if arr[i] < min
        min = arr[i]
        minc += 1
    elsif arr[i] > max
        max = arr[i]
        maxc += 1
    end
end

puts "#{maxc} #{minc}"
