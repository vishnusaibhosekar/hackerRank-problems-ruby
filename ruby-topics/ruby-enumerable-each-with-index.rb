# https://www.hackerrank.com/challenges/ruby-enumerable-each-with-index/problem
def skip_animals(animals, skip)
    arr = []
    animals.each_with_index { |item, index| arr.push( "#{index}:#{item}" ) unless index < skip }
    arr
end