# https://www.hackerrank.com/challenges/ruby-blocks/problem?isFullScreen=true
def factorial
    yield
end

n = gets.to_i
factorial do 
    puts (2..n).reduce(1) { |acc, i| acc * i }
end