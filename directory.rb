
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
def print_header
	puts "----------------------------------------"
	puts "Makers Academy - January Cohort Students"
	puts "----------------------------------------"
end

# Method for 
def print(arr_name)
	arr_name.each do |stu|
		puts stu
	end
end

# 3. Then we print the overall number of students
def print_footer(students)
	puts "Overall we have #{students.length} students"
end

# Prints header, students names, and footer
puts print_header
puts print(students)
puts print_footer(students)
