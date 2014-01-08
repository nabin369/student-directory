
# array
students = [ 
			"Biwek Shrestha",
			"Nabin Rai",
			"Andrey",
			"Makis Otman",
			"James Hunter",
			"Roy",
			"Peter",
			"Jorja",
			"Rolando",
			"Abraham Thomas",
			"Berta Gutierrez",
			"Ayaz"
			]

# 1. print list of students  
puts "----------------------------------------"
puts "Makers Academy - January Cohort Students"
puts "----------------------------------------"

students.each do |stu|
	puts stu
end

# 3. Then we print the overall number of students
puts "Overall we have #{students.length} students"