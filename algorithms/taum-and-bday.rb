# https://www.hackerrank.com/challenges/taum-and-bday/problem
t = gets.to_i

t.times do
    b, w = gets.chomp.split.map(&:to_i)
    bc, wc, z = gets.chomp.split.map(&:to_i)
    
    min = [b * bc + w * wc, b * (wc + z) + w * wc, b * bc + w * (bc + z)].min
    puts(min)
end