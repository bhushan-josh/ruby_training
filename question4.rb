# 4. Regex for mobile number, email address, name, gender(M / F) and  amount  

email : /([A-Za-z0-9._]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,})/   
mobile : /([+][9][1][ ][789]{1}[0-9]{9})/
name : /([a-zA-Z\s]+)/
gender : /(?:M|F)/
amount : /^\d+\.\{0,1}+\d{0,2)+$/