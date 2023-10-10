# https://www.hackerrank.com/challenges/angry-professor/problem
t = gets.to_i

t.times do
    n, k = gets.chomp.split.map(&:to_i)
    students = gets.chomp.split.map(&:to_i)
    puts(students.count {|student| student <= 0} < k ? "YES" : "NO")
end