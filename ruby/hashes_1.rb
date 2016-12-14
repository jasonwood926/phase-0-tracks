#floral shop application
#asks for basic information (email,phone,name) and information about qualifications

# Prompt the designer/user for all of this information.
User_1 = {}

puts "What is your name?"
User_1[:name] = gets.chomp 

puts "How old are you?"
input = gets.chomp
User_1[:age] = input.to_i 

puts "What is your phone number?"
User_1[:phone] = gets.chomp 

puts "What is your email address?"
User_1[:email] = gets.chomp 

puts "Are you good with plants? (y/n)"
while input = gets.chomp 
  case input 
when "y" 
  User_1[:goodwithplants] = true 
  break 
when "n"
  User_1[:goodwithplants] = false 
  break
else 
  puts "Please select 'y' or 'n'"
end 
end 

puts "What are your favorite plants? (type 'done' when finished)"
input = gets.chomp
favorite_plants = []
if input != "done"
  favorite_plants << input 
loop do 
  puts "Any others?"
  input = gets.chomp 
  break if input == "done"
  favorite_plants << input 
end 
elsif input == "done"
  favorite_plants << "none"
end 
User_1[:favorite_plants] = favorite_plants

puts "What are your qualifications? (type 'done' when finished)"
input = gets.chomp 
qualifications = []
if input != "done"
  qualifications << input
  loop do 
    puts "Any others?"
    input = gets.chomp
    break if input == "done"
    qualifications << input 
  end 
elsif input == "done"
  qualifications << "none"
end 
User_1[:qualifications] = qualifications

puts "When can you begin work?"
User_1[:startdate] = gets.chomp 

puts User_1

#checks if information is correct and prompts the user to make changes if necessary

loop do 
  prompt = "Is the information for each catagory correct? (y/n)"
  p prompt 
  input = gets.chomp
  case input 
  when "n"
  puts User_1.keys
  puts "Please type the catagory you wish to change and press enter:"
  input = gets.chomp 
  modified_key = input.to_sym
  puts "Please enter necessary changes:"
  modified_value = gets.chomp 
  User_1[modified_key] = modified_value
  p User_1
  when "y"
  puts User_1
  break 
end
end 

#