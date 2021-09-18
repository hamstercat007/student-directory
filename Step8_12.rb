def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # gets the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do 
    # add the student hash to the array 
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end 

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  if students.count > 0
    students.each do |student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
  else 
    puts "There is nothing to print out"
  end 
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

#call input_students, and return the value into the variable students
students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)


