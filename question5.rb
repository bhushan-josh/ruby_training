# 5. Write a program to find IP address class

# Class A IP address : 0.16.12.34 to 127.52.36.11.
# Class B IP address : 128.16.12.34 to 191.16.12.34.
# Class C IP address : 192.16.12.34 to 233.168.1.15.
# Class D IP address : 234.16.12.34 to 239.16.12.34.
# Class E IP address : 240.16.12.34 to 255.16.12.34.


puts "Enter the IP Address :"
input_string = gets

if input_string =~ /^([0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3})$/
    
    first_substrings = input_string.split('.')
    first_substring = first_substrings[0]

    if first_substring.to_i >= 0 and first_substring.to_i <=127
        puts "Class A"
    elsif first_substring.to_i >= 128 and first_substring.to_i <= 191
        puts "Class B"
    elsif first_substring.to_i >= 192 and first_substring.to_i <=233
        puts "Class C"
    elsif first_substring.to_i >= 234 and first_substring.to_i <= 239
        puts "Class D"
    elsif first_substring.to_i >= 240 and first_substring.to_i <= 255
        puts "Class E"
    else
        puts "Not a valid IP address"
    end
else
    puts "Not a valid IP address"
end