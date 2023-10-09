# https://www.hackerrank.com/challenges/ruby-case/problem
def identify_class(obj)
    case obj
    when Hacker
        puts "It's a #{obj.class}!"
    when Submission
        puts "It's a #{obj.class}!"
    when TestCase
        puts "It's a #{obj.class}!"
    when Contest
        puts "It's a #{obj.class}!"
    else
        puts "It's an unknown model"
    end 
end