# https://www.hackerrank.com/challenges/diagonal-difference/problem
def diagonalDifference(n, arr)
    left_diagonal_sum = 0
    right_diagonal_sum = 0

    (0...n).each do |i|
        left_diagonal_sum += arr[i][i]
        right_diagonal_sum += arr[i][n - i - 1]
    end
    
    (left_diagonal_sum - right_diagonal_sum).abs
end

n = gets.chomp.to_i

arr = Array.new(n) {Array.new(n)}

n.times do |i|
    row = gets.split.map(&:to_i)
    arr[i] = row
end

puts(diagonalDifference(n,arr))