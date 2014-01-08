=begin
# array
students = [ 
			{:names => "Biwek Shrestha",  :cohort =>:january},
			{:names =>"Nabin Rai",  :cohort => :january},
			{:names => "Andrey",  :cohort => :january},
			{:names => "Makis Otman",  :cohort => :january},
			{:names => "James Hunter",  :cohort => :january},
			{:names => "Roy",  :cohort => :january},
			{:names => "Peter",  :cohort => :january},
			{:names => "Jorja",  :cohort => :january},
			{:names => "Rolando",  :cohort => :january},
			{:names => "Abraham Thomas",  :cohort => :january},
			{:names => "Berta Gutierrez", :cohort =>  :january},
			{:names => "Ayaz", :cohort => :january}
			]
=end

def input_students
	puts "Please enter student name"
	students = []
	name = gets.chomp
	 while !name.empty? do
	 	students << {:names => name, :cohort => :january}
	 	puts "Now we have #{students.length} students"
	 	name = gets.chomp
	 end
	return students
end

# 1. print list of students  
def print_header
	puts "----------------------------------------"
	puts "Makers Academy - January Cohort Students"
	puts "----------------------------------------"
end

# Method for printing student names
def print(arr_name)
	arr_name.each do |stu|
		puts "#{stu[:names]} (#{stu[:cohort]} cohort)" 
	end
end

# 3. Then we print the overall number of students
def print_footer(students)
	puts "Overall we have #{students.length} students"
end

# Get Student names
students = input_students

# Prints header, students names, and footer
print_header
print(students)
print_footer(students)
