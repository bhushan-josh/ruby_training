# 4. Regex for mobile number, email address, name, gender(M / F) and  amount  

def regex_check 
        
    email = /([A-Za-z0-9._]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,})/   
    mobile = /([789]{1}[0-9]{9})/
    name = /([a-zA-Z\s]+)/
    gender = /[MmFf]/
    amount = /^(\d+)/


    puts "Enter Name:"
    name = gets
    puts name.match?(name) ? "Name number is Valid" : "Name is Invalid!"

    puts "Enter Email:"
    name = gets
    puts name.match?(email) ? "Email number is Valid" : "Email is Invalid!"

    puts "Enter Mobile:"
    name = gets
    puts name.match?(mobile) ? "Mobile number is Valid" : "Mobile is Invalid!"

    puts "Enter Gender:"
    name = gets
    puts name.match?(gender) ? "Gender number is Valid" : "Gender is Invalid!"


    puts "Enter Amount:"
    name = gets
    puts name.match?(amount) ? "Amount number is Valid" : "Amount is Invalid!"
end

regex_check