# https://www.hackerrank.com/challenges/dynamic-array/problem
n, noq = gets.chomp.split.map(&:to_i)

arr = Array.new(n) { [] }
lastAns = 0
results = []

noq.times do
    q = gets.chomp.split.map(&:to_i)
    if q[0] == 1
        ix = ((q[1] ^ lastAns) % n)
        arr[ix] << q[2]
    else
        ix = ((q[1] ^ lastAns) % n)
        lastAns = arr[ix][q[2] % arr[ix].length]
        results << lastAns
    end
end

results.each { |result| puts result }