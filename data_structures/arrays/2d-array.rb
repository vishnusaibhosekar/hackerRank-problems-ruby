# https://www.hackerrank.com/challenges/2d-array/problem
arr = Array.new(6) { Array.new(6, 0) }

(0..5).each do |row|
    input = gets.chomp.split.map(&:to_i)
    arr[row] = input
end

max_hourglass_sum = -999

(1..4).each do |i|
    (1..4).each do |j|
        hourglass_sum = arr[i - 1][j - 1] + arr[i - 1][j] + arr[i - 1][j + 1] + arr[i][j] + arr[i + 1][j - 1] + arr[i + 1][j] + arr[i + 1][j + 1]
        max_hourglass_sum = [max_hourglass_sum, hourglass_sum].max
    end
end

puts(max_hourglass_sum)