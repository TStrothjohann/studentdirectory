#Let's put all students into an array:
students =[ 
  ["Alex Parkinson", :december],
  ["Arfah Farooq", :december],
  ["Carrie Christenson", :december],
  ["Chris Ward", :december],
  ["Cia Walsh", :december],
  ["Costas Sarris", :december],
  ["Diego Romero", :december],
  ["Ed Brown", :december],
  ["Erik Griffin", :november],
  ["Gabe Arafa", :november],
  ["Hannah Carney", :november] 
  ]

def print_header
puts "The students of my cohort at Makers Academy:"
puts "--------"
end

def print(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

def print_footer(names)
  puts "Overall we have #{names.length} great students"
end

#nothing happens until we call the methods:
print_header
print(students)
print_footer(students)

