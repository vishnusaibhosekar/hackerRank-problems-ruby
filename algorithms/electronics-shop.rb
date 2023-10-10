# https://www.hackerrank.com/challenges/electronics-shop/problem
b, n, m = gets.chomp.split.map(&:to_i)
kb = gets.chomp.split.map(&:to_i)
dr = gets.chomp.split.map(&:to_i)

max = -1

kb.each do |k|
    dr.each do |d|
        if (k + d) > max && (k + d) <= b
            max = k + d
        end
    end
end

puts(max)