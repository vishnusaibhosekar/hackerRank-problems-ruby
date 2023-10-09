# https://www.hackerrank.com/challenges/ruby-methods-keyword-arguments/problem
def convert_temp(temp, **option)
    if option[:input_scale] == "kelvin" 
        temp = temp - 273.15
    elsif option[:input_scale] == "fahrenheit" 
        temp = ((temp - 32) / 1.8)
    end
        
    if option[:output_scale] == "kelvin"
        temp =  temp + 273.15
    elsif option[:output_scale] == "fahrenheit"
        temp = 1.8 * temp +32
    end
    temp
end