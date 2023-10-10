# https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
i, j, k = gets.chomp.split
k = k.to_i

count = 0

(i.to_i..j.to_i).each do |d|
    count +=1 if (d.to_i - d.to_s.reverse.to_i).abs % k == 0
end

puts(count)