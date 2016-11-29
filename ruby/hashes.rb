#Greets and asks user name, age, phone number, email address, if they like coffee.
#Asks user favorite coffee types, what type of espresso drinks they can make, when they can start working
#converts all inputs to proper data types.

User_1 = {}

puts "What is your name?"
User_1[:name] = gets.chomp

puts "How old are you?"
input = gets.chomp
User_1[:age] = input.to_i

puts "What's your email address?"
User_1[:email] = gets.chomp

puts "What is your phone number?"
User_1[:phone] = gets.chomp

prompt = ""
puts "Do you like coffee? (y/n)"
print prompt
while input = gets.chomp # loop while getting user input
  case input
  when "y"
    User_1[:likes_coffee] = true
    break # make sure to break so you don't ask again
  when "n"
    User_1[:likes_coffee] = false
    puts "Oh, so you dont like coffee."
    break # and again
  else
    puts "Please select 'y' or 'n'"
    print prompt # print the prompt, so the user knows to re-enter input
  end
end

puts "What are your favorite types of coffee? (type 'done' when finished)"
input = gets.chomp 
favorite_coffee = []
if input != "done"
favorite_coffee << input
loop do 
  puts "Any others?"
  input = gets.chomp
  break if input == "done"
  favorite_coffee << input
end
elsif input == "done"
  favorite_coffee << "none"
end 
User_1[:favorite_coffee] = favorite_coffee



puts "What kind of espresso drinks can you make? (type 'done' when finished)"
input = gets.chomp 
espresso_drinks = []
if input != "done"
espresso_drinks << input 
loop do 
  puts "Any others?"
  input = gets.chomp
  break if input == "done"
  espresso_drinks << input
end
elsif input == "done"
  espresso_drinks << "none"
end
User_1[:espresso_drinks] = espresso_drinks

puts "When can you begin working? mm/dd/yy"
User_1[:start_date] = gets.chomp

puts User_1

# Asks user if information is correct. Allows user to modify information if necessary. 


loop do 
prompt = "Is the information for each catagory correct? (y/n)"
p prompt
input = gets.chomp 
case input
when "n" 
  puts User_1.keys
  puts "Please enter the catagory you wish to change:"
  input = gets.chomp
  modified_key = input.to_sym
  puts "Please enter necessary changes (if multiple entries, separate with commas):"
  modified_value = gets.chomp
  User_1[modified_key] = modified_value
  p User_1
when "y"
  puts User_1
  break
end 
end 

