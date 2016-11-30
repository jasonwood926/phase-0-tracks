
# NOTES: PLEASE IGNORE AND SKIP TO LINE 49
# def halt_command
# 	puts "STOP, IN THE NAME OF LOVE!"
# 	yield("Tracy", "Morgan")
# end

# halt_command { |criminals, felons| puts "respect my authoritah #{criminals} and #{felons}"}

#############################################

# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "original data:"
# p letters

# #iterate through the array with .each
# letters.each do |letter|
# 	new_letters << letter.next
# end 

# puts "after .each call:"
# p letters
# p new_letters 

# numbers = {1 => 'one', 2 => 'two', 3 => 'three'}

# #iterate through the hash with .each 
# numbers.each do |digit, word|
#   puts "#{digit} is spelled out as #{word}"
# end

# letters = ["a", "b", "c", "d", "e"]

# puts "Original data:"
# p letters

# #iterate through the array with .map
# modified_letters = letters.map do |letter|
# 	puts letter
# 	letter.next
# end 

# puts "After .map call:"
# p letters 
# p modified_letters

##################################

#.each & .map through a hash 

profession_hash = {'bartender' => 'tim', 'waitress' => 'dorthy', 'hairstylist' => 'michelle', 'engineer' => 'sam', 'baker' => 'michael'}
puts "Original data set:"
p profession_hash

puts "New expression of data using .each:"
profession_hash.each do |job, name|
	puts "#{name} is a(n) #{job}"
end 

puts "original data set:"
p profession_hash

puts "New expression of data using .map:"
profession_hash.map do |job, name|
	puts "#{name} is a great #{job}"
end




#.each, .map & .map! through an array

puts "Original value:"
numbers = [1, 2, 3, 4, 5]
new_numbers = []
p numbers



#.each

numbers.each do |number|
	new_numbers << number * 6
end 

puts "Original value:"
p numbers
puts "New Array times 6:"
p new_numbers



#.map 
new_numbers_array = numbers.map do |number|
number + 5
end
puts "Original value:"
p numbers
puts "New Array plus 5"
p new_numbers_array



#.map!
numbers.map! do |number|
	number + 15
end 

puts "Changed original value with .map! plus 15"
p numbers 


########################################

puts "New Array:"
numbers_array_1 = [2, 14, 4, 27, 36, 189]
p numbers_array_1

numbers_array_1.delete_if {|number| number <= 5}
puts "array cleared of all numbers less than or equal to 5:"
p numbers_array_1


numbers_array_2 = [2, 14, 4, 27, 36, 189]

numbers_array_2.keep_if {|number| number <= 27}
puts "array keeping all numbers less than or equal to 27:"
p numbers_array_2


names_and_age = {tim: 36, mary: 27, john: 28, sue: 49}

youngins = names_and_age.select {|name, age| age <= 30}

puts "hash filtered for all students under age 30:"
p youngins

names_and_age_2 = {tim: 36, mary: 27, john: 28, sue: 49}

names_and_age_2.reject! {|name, age| age >= 28}
puts "hash filtered for all students under the age of 28:"
p names_and_age_2







