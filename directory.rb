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

# Method for printing student names
# Printing with number using 'each.with_index'
def print_each_with_index(arr_name)
	# each.with_index 
	arr_name.each.with_index(1) do |stu, i|
		puts "#{i}: #{stu[:names]} (#{stu[:cohort]} - cohort)"
	end
end


def input_students
	puts "Please enter the names of the students".center(20)
	puts "To finish, just hit return thrice"
	# puts "Please enter cohort"
	# cohort = gets.chomp
	# puts "Please enter your hobbies"
	# hobbies = gets.chomp

	students = []
 	# while loop
	# while !name.empty? do
	#  	students << {:names => name, :cohort => cohort, :hobbies => hobbies}
	# loop if name is empthy repeat the process aggain
	loop do 
		puts "Please enter name of the student"
		name = gets.delete "\n"	# Gets name from user
		puts "Please enter cohort"
		cohort = gets.chomp # Gets cohort from user
		puts "Please enter your hobbies"
		hobbies = gets.chomp # Gets hobbies from user

		break if name.empty?
		if [cohort, hobbies].any? {|values| values.empty?}
			puts "Please try again"
			redo
		end
		# Insert the entries into the student array
		students << {:names => name, :cohort => cohort, :hobbies => hobbies}
	
		# Print singular if only 1 students
		if students.length == 1
			puts "Now we have #{students.length} student"
	 	else
	 		puts "Now we have #{students.length} students"
		end
	end
	students
end

# 1. print list of students  
def print_header
	puts "----------------------------------------"
	puts "Makers Academy - January Cohort Students"
	puts "----------------------------------------"
end

# Method for printing student names
def print(arr_name)
	i = 0
	while i < arr_name.length 
		puts "#{i+1}: #{arr_name[i][:names]} (#{arr_name[i][:cohort]} cohort), #{arr_name[i][:hobbies]} hobbies"
		i += 1
	end
end

# Print the sorted cohort
def print_sorted(arr_name)
	print(arr_name.sort {|one, another| one[:b] <=> another[:b]})
end

# Print the names which starts with letter 'A'
def print_A_student(arr_name)
	print(arr_name.select  { |name| name[:names].slice(0) == 'A'})
end

def print_12_student(arr_name)
	print(arr_name.select { |name| name[:names].length < 12})
end

# 3. Then we print the overall number of students
def print_footer(students)
	puts "Overall we have #{students.length} students"
end

# Get Student names
students = input_students

# Prints header, students names, and footer
print_header
#print_each_with_index(students)
print_sorted(students)
# print_A_student(students)
# print_12_student(students)
print_footer(students)


