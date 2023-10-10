# https://www.hackerrank.com/challenges/equal-stacks/problem
x = gets.chomp
h1 = gets.chomp.split.map(&:to_i)
h2 = gets.chomp.split.map(&:to_i)
h3 = gets.chomp.split.map(&:to_i)

s1 = h1.sum
s2 = h2.sum
s3 = h3.sum

loop do
    if s1 == s2 && s2 == s3
        puts s1
        break
    end
    
    max_sum = [s1, s2, s3].max

    if max_sum == s1
        s1 -= h1.shift
    elsif max_sum == s2
        s2 -= h2.shift
    elsif max_sum == s3
        s3 -= h3.shift
    end
end