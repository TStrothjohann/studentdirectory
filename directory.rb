@students= []
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit Enter twice"
  #get the first name
  name=gets.chomp
  # wehile the name is not empty repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {:name => name, :cohort => :february}
    puts "Now we have #{@students.length} students"
    #get another student's name
    name = gets.chomp
  end
  #return array of students
  @students
end

def print_header
puts "The students of my cohort at Makers Academy:"
puts "--------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall we have #{@students.length} great students"
  puts ""
end

def show_students
print_header
      print_students_list
      print_footer
end

def print_menu
puts "1. input a student"
    puts "2. show the list of students"
  puts "3. Save List to students.csv"
  puts "9. Exit"
end

def process(userchoice)
  case userchoice
    when "1"
      @students = input_students
      when "2"
      show_students
    when "3"
    save_students
      when "9"
      exit #will terminate the program
    else
      puts "I don't know what you meant. Please try again."
    end
end

#Interactive menu

def interactive_menu
  loop do
  # 1. Show the menu and ask the user what to do
    print_menu   
  # 3. get the user input and Do what the user wants to do
    process(gets.chomp)
  end
end

def save_students
  #open the file for writing
  file = File.open("students.csv", "w")
  #iterate over the array of students
  @students.each do |student|
    student_data=[student[:name], student[:cohort]]
    csv_line=student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "saved to students.csv"
end

def load_students
  file=File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    @students << {:name => name, :cohort => cohort.to_sym}
  end
  file.close
end
  



#nothing happens until we call the method:
load_students
interactive_menu




