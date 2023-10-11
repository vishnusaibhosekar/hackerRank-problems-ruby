# https://www.hackerrank.com/challenges/cut-the-sticks/problem
n = gets.to_i
arr = gets.chomp.split.map(&:to_i)

until arr.sum == 0 do
    puts arr.length
    min = arr.min
    arr.delete_if { |x| x == min }
end