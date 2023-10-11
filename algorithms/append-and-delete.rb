# https://www.hackerrank.com/challenges/append-and-delete/problem
s = gets.chomp
t = gets.chomp
k = gets.to_i

common_length = 0

s.each_char.with_index do |char, index|
    break if char != t[index]
    common_length += 1
end

total_operations = (s.length - common_length) + (t.length - common_length)

if (k >= total_operations) && ((k - total_operations) % 2 == 0 || k >= s.length + t.length)
    puts 'Yes'
else
    puts 'No'
end