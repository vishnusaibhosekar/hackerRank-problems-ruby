# https://www.hackerrank.com/challenges/extra-long-factorials/problem
n = gets.strip.to_i

fact = 1

(1..n).each do |i|
    fact *= i
end

puts(fact)