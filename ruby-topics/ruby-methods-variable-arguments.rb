# https://www.hackerrank.com/challenges/ruby-methods-variable-arguments/problem?isFullScreen=true
def full_name(first, *rest)
    rest.reduce(first) {|f,l| f+" "+l}
end