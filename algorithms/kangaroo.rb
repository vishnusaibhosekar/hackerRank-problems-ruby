# https://www.hackerrank.com/challenges/kangaroo/problem
x1, v1, x2, v2 = gets.chomp.split.map(&:to_i)

def meets(x1, v1, x2, v2)
    if v1 == v2
        return x1 == x2 ? "YES" : "NO"
    elsif (x2 - x1) % (v1 - v2) == 0 && (x2 - x1) / (v1 - v2)  >= 0
        return "YES"
    else
        return "NO"
    end
end

result = meets(x1, v1, x2, v2)
puts result