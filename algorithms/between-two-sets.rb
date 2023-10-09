# https://www.hackerrank.com/challenges/between-two-sets/problem
def solve(a, b)
    max_a = a.max
    min_b = b.min
    
    count = 0
    
    (max_a..min_b).each do |x|
        if a.all? { |factor| x % factor == 0 }
            if b.all? { |element| element % x == 0 }
            count += 1
            end
        end
    end
    
    count
end

n, m = gets.chomp
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

puts solve(a,b)