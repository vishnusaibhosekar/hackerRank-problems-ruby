# https://www.hackerrank.com/challenges/kaprekar-numbers/problem
l = gets.to_i
r = gets.to_i

ans = []

(l..r).each do |i|
    sq = i * i
    len = sq.to_s.length
    d = len/2
    lsub, rsub = 0, 0
    if len.even?
        lsub = sq.to_s[0..(d-1)].to_i
        rsub = sq.to_s[d..len].to_i
    else
        lsub = ("0" + sq.to_s)[0..d].to_i
        rsub = sq.to_s[d..len].to_i
    end
    ans << i if (lsub + rsub) == i
end

puts(ans.empty? ? "INVALID RANGE" : ans.join(" "))