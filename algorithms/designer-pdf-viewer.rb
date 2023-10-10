# https://www.hackerrank.com/challenges/designer-pdf-viewer/problem
height = gets.chomp.split.map(&:to_i)
s = gets.chomp

max=1

(0...s.length).each do |i|
    max = [max, height[s[i].ord - 'a'.ord]].max
end

puts(max*s.length)