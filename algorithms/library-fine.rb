# https://www.hackerrank.com/challenges/library-fine/problem
return_d, return_m, return_y = gets.chomp.split.map(&:to_i)
expected_d, expected_m, expected_y = gets.chomp.split.map(&:to_i)

if return_y < expected_y || (return_y == expected_y && return_m < expected_m) || (return_y == expected_y && return_m == expected_m && return_d <= expected_d)
    puts 0
elsif return_y == expected_y && return_m == expected_m
    puts 15 * (return_d - expected_d)
elsif return_y == expected_y && return_m > expected_m
    puts 500 * (return_m - expected_m)
else
    puts 10000
end