# https://www.hackerrank.com/challenges/counting-valleys/problem
n = gets.to_i
s = gets.chomp

height, count = 0, 0

(0..s.length).each do |i|
    if s[i]=="U"
        height += 1
        count +=1 if height ==0
    end
    height -= 1 if s[i]=="D"
end

puts(count)