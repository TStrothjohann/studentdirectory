#Let's put all students into an array:
students =[ 
  {:name => "Alex Parkinson", :cohort => :february},
  {:name => "Arfah Farooq", :cohort => :february},
  {:name => "Carrie Christenson", :cohort => :february},
  {:name => "Chris Ward", :cohort => :february},
  {:name => "Cia Walsh", :cohort => :february},
  {:name => "Costas Sarris", :cohort => :february},
  {:name => "Diego Romero", :cohort => :february},
  {:name => "Ed Brown", :cohort => :february},
  {:name => "Erik Griffin", :cohort => :february},
  {:name => "Gabe Arafa", :cohort => :february},
  {:name => "Hannah Carney", :cohort => :february}
  ]

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
print_header
print(students)
print_footer(students)

