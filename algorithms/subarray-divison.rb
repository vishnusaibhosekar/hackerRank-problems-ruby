# https://www.hackerrank.com/challenges/the-birthday-bar/problem
def birthday_chocolate(s, d, m)
    count = 0
    
    (0..s.length - m).each do |i|
        segment = s[i, m] 
        sum_segment = segment.sum 
        count += 1 if sum_segment == d
    end

    count
end

n = gets.chomp
s = gets.chomp.split.map(&:to_i)
d, m = gets.chomp.split.map(&:to_i)

puts(birthday_chocolate(s,d,m))