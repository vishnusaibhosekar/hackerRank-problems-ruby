# https://www.hackerrank.com/challenges/ruby-strings-methods-ii/problem
def mask_article(string, arr)
    arr.map do |word|
        string.gsub!(word, strike(word)) if string.include? word
    end
    string
end

public def strike(string)
    "<strike>#{string}</strike>"
end