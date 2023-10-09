# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem
def rot13(secret_messages)
    secret_messages.map { |string| string.tr("A-Za-z", "N-ZA-Mn-za-m") }
end