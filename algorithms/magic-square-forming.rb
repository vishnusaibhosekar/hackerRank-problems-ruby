# https://www.hackerrank.com/challenges/magic-square-forming/problem
def is_magic(square)
    sum = square[0].sum
    
    square.each { |row| return false if row.sum != sum }
    
    square.transpose.each { |col| return false if col.sum != sum }
    
    return false if (0..2).sum { |i| square[i][i] } != sum
    return false if (0..2).sum { |i| square[i][2 - i] } != sum

    true
end

def magic_square_cost(matrix)
    all_magic_squares = [
    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
    ]

    min_cost = Float::INFINITY

    all_magic_squares.each do |magic_square|
        cost = 0
        (0..2).each do |i|
            (0..2).each do |j|
            cost += (matrix[i][j] - magic_square[i][j]).abs
            end
        end
        min_cost = [min_cost, cost].min
    end

    min_cost
end

matrix = Array.new(3)
(0..2).each { |i| matrix[i] = gets.chomp.split.map(&:to_i) }

cost = magic_square_cost(matrix)
puts cost