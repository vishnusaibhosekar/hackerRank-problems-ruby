# https://www.hackerrank.com/challenges/staircase/problem
n = gets.to_i

def staircase(n)
    (1..n).each do |i|
        spaces = ' ' * (n - i)
        hashes = '#' * i
        puts spaces + hashes
    end
end

staircase(n)