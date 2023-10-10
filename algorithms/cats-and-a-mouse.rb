# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
n = gets.to_i

n.times do
    a, b, c = gets.chomp.split.map(&:to_i)
    ans = ""
    if (c-a).abs > (c-b).abs
        ans = "Cat B"
    elsif (c-a).abs < (c-b).abs
        ans = "Cat A"
    else
        ans = "Mouse C"
    end
    puts(ans)
end