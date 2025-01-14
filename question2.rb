# 2. WAP for students to print their school level according to grade
# e.g -
# if grade is between 1-5 return elementary
# if grade is between 6-8 return middle school
# if grade is between 9-12 return high school
# if grade is between otherwise return college


def school_level grade
    
    if grade >= 1 and grade <= 5
        puts "Elementary"
    elsif grade >= 6 and grade <= 8
        puts "Middle School"
    elsif grade >= 9 and grade <= 12
        puts "High School"
    else
        puts "College"
    end
end

puts "Enter the grade"
input_grade = gets.to_i

school_level input_grade
