# https://www.hackerrank.com/challenges/day-of-the-programmer/problem
def day_of_programmer(year)
    if year == 1918
        return "26.09.1918" # Special case
    elsif (year < 1918 && year % 4 == 0) || (year > 1918 && ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)))
        return "12.09.#{year}" # Leap year
    else
        return "13.09.#{year}" # Non-leap year
    end
end

year = gets.chomp.to_i
result = day_of_programmer(year)
puts result