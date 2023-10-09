# https://www.hackerrank.com/challenges/ruby-partial-applications/problem?isFullScreen=true
combination = ->(n1) do
    ->(n2) do
        factorial = ->(num) do
            (1..num).reduce(1, :*)
        end
    
        nCr = factorial.(n1)/(factorial.(n2)*factorial.(n1-n2))
    end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)