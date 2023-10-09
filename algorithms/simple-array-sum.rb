# https://www.hackerrank.com/challenges/simple-array-sum/problem
def simpleArraySum(ar)
    ar.sum
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.strip.to_i

ar = gets.rstrip.split.map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()