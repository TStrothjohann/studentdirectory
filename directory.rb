def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit Enter twice"
  #create an empty array
  students=[]
  #get the first name
  name=gets.chomp
  # wehile the name is not empty repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {:name => name, :cohort => :february}
    puts "Now we have #{students.length} students"
    #get another student's name
    name = gets.chomp
  end
  #return array of students
  students
end

def print_header
puts "The students of my cohort at Makers Academy:"
puts "--------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall we have #{names.length} great students"
end

#nothing happens until we call the methods:
students = input_students
print_header
print(students)
print_footer(students)

