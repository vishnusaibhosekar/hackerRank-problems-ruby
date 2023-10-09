# https://www.hackerrank.com/challenges/ruby-enumerable-group-by/problem
def group_by_marks(marks, pass_marks)
    return marks.group_by do |k,v| 
        if v>= pass_marks
            next "Passed"
        else
            next "Failed"
        end
    end
end