# https://www.hackerrank.com/challenges/plus-minus/problem
n = gets.to_i
arr = gets.rstrip.split.map(&:to_i)

# puts n
# puts arr.join(" ")

def ans(n, arr)
    pos = 0.0
    neg = 0.0
    zero = 0.0
    
    arr.each_index do |i|
        pos += 1 if arr[i] > 0
        neg += 1 if arr[i] < 0
        zero += 1 if arr[i]==0
    end
    
    puts(pos/n)
    puts(neg/n)
    puts(zero/n)
end

ans(n,arr)