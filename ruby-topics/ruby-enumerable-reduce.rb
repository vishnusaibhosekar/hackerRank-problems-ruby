# https://www.hackerrank.com/challenges/ruby-enumerable-reduce/problem
Fixnum = Integer
Bignum = Integer

def sum_terms(n)
    (1..n).reduce(0) {|sum, n| sum + n**2 + 1}
end