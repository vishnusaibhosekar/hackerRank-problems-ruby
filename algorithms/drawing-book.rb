# https://www.hackerrank.com/challenges/drawing-book/problem
def minimum_turns(n, p)
    from_start = p / 2
    
    from_end = (n / 2) - (p / 2)
    
    [from_start, from_end].min
end

n = gets.chomp.to_i
p = gets.chomp.to_i
result = minimum_turns(n, p)

puts result  