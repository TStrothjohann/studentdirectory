#Let's put all students into an array:
students =[ 
  "Alex Parkinson",
  "Arfah Farooq",
  "Carrie Christenson",
  "Chris Ward",
  "Cia Walsh",
  "Costas Sarris",
  "Diego Romero",
  "Ed Brown",
  "Erik Griffin",
  "Gabe Arafa",
  "Hannah Carney"
  ]
#and than let's print them
puts "The students of my cohort at Makers Academy:"
puts "--------"

students.each do |student|
  puts student
end
#finally we print the total:
puts "Overall we have #{students.length} great students"

