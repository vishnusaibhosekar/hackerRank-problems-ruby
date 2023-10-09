# https://www.hackerrank.com/challenges/grading/problem
n = gets.to_i

n.times do
    marks = gets.chomp.to_i
    if marks < 38
        puts marks
    else
        next_multiple_of_5 = (marks / 5.0).ceil * 5
        if next_multiple_of_5 - marks < 3
        puts next_multiple_of_5
        else
        puts marks
        end
    end
end