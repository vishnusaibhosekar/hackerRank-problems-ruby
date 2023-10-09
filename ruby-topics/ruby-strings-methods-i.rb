# https://www.hackerrank.com/challenges/ruby-strings-methods-i/problem
def process_text(text_array)
    text_array.map(&:strip).join(" ")
end