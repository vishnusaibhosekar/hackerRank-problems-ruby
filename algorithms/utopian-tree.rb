# https://www.hackerrank.com/challenges/utopian-tree/problem
t = gets.to_i

t.times do
    cycles = gets.to_i
    
    height = 1
    cycles.times do |cycle|
        if cycle % 2 == 0
            height *= 2
        else
            height += 1
        end
    end

    puts height
end