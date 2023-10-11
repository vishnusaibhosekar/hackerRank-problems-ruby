# https://www.hackerrank.com/challenges/find-digits/problem
t = gets.to_i

t.times do
    n = gets.to_i
    digits = n.to_s.split("").map(&:to_i)
    count = 0
    digits.each do |i|
        unless i == 0
            count += 1 if n % i == 0
        end
    end
    puts(count)
end