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
  puts ""
end

#Interactive menu

def interactive_menu
  students = []
  loop do
  # 1. Show the menu and ask the user what to do
    puts "1. input a student"
    puts "2. show the list of students"
    puts "9. Exit"
  # 2. get the user input and save it to an variable
    userchoice = gets.chomp
  # 3. Do what the user wants to do
    case userchoice
    when "1"
      students = input_students
      when "2"
      print_header
      print(students)
      print_footer(students)
      when "9"
      exit #will terminate the program
    else
      puts "I don't know what you meant. Please try again."
    end
  end
end


#nothing happens until we call the method:
interactive_menu




