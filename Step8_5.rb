def input_students
  puts "Please enter the names of the students and their details"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # gets the first name
  name = gets.chomp
  puts "Where was #{name} born?"
  country_of_birth = gets.chomp
  puts "What does #{name} like doing?"
  hobbies = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do 
    # add the student hash to the array 
    students << {name: name, cohort: :november, country: country_of_birth, hobbies: hobbies}
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
  students.each do |student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort) #{student[:country]} #{student[:hobbies]}"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)


