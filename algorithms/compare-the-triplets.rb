# https://www.hackerrank.com/challenges/compare-the-triplets/problem
def compareTriplets(a, b)
    sca=0
    scb=0
    
    a.each_index do |i|
        sca += 1 if a[i]>b[i]
        scb += 1 if b[i]>a[i]
    end
    
    [sca, scb]    
end

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

puts result.join(" ")