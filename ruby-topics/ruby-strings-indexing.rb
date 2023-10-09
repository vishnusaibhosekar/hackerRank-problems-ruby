# https://www.hackerrank.com/challenges/ruby-strings-indexing/problem
def serial_average(number)
    num1, num2, num3 = number.split("-")
    avg = ((num2.to_f + num3.to_f) / 2).round(2)
    new_number = "#{num1}-%0.2f" % [avg]
    return new_number
end