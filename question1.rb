# 1. Write a program to display number is prime or not

puts "Enter the number"
number = gets.to_i

if number <= 1
    puts number.to_s + " is not a prime number"
else
    bflag = false
    
    for i in 2..number/2 do    
        if number % i == 0
            bflag = true
            break
        end
    end

    if bflag
        puts number.to_s + " is not a prime number"
    else
        puts number.to_s + " is a prime number"
    end
end