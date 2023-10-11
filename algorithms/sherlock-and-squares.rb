# https://www.hackerrank.com/challenges/sherlock-and-squares/problem
q = gets.to_i

q.times do
    a, b = gets.chomp.split.map(&:to_i)
    ar = Math.sqrt(a).floor
    br = Math.sqrt(b).ceil
    count = 0
    
    (ar..br).each do |i|
        sq = i ** 2
        count += 1 if sq >= a && sq <= b
    end
    puts(count)
end