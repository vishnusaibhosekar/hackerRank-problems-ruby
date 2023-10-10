# https://www.hackerrank.com/challenges/maximum-element/problem
n = gets.to_i

stack = []

n.times do
    q = gets.chomp
    
    choice = q[0]
    val = q.slice(2..-1).to_i
    
    stack.push(val) if choice == "1"
    stack.pop if choice == "2"
    puts stack.max if choice == "3"
end