# https://www.hackerrank.com/challenges/ruby-lazy/problem?isFullScreen=true
is_prime = ->(num) do
    return false if num <= 1

    (2..Math.sqrt(num)).each do |i|
        return false if num % i == 0
    end

    true
end

print_array = -> (n) do
    1.upto(Float::INFINITY).lazy.select {|x| (x.to_s == x.to_s.reverse && is_prime.(x)) ? x : false }.first(n.to_i)
end

n = gets
print print_array.(n)