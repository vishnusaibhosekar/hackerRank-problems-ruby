# https://www.hackerrank.com/challenges/time-conversion/problem
input = gets.chomp
time_parts = input.split(":")
hh, mm, ss = time_parts[0], time_parts[1], time_parts[2]

if time_parts[2].include?("PM")
    hh = (hh.to_i + 12).to_s if hh != "12"
elsif hh == "12"
    hh = "00"
end

puts "#{hh}:#{mm}:#{ss[0,2]}"