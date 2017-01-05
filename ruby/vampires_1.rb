#vampire detection questionaire

# At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. 
out_of_students = 0
puts "How many employees will you be processing today?"
employees_remaining = gets.chomp.to_i


begin
#ask the user for their name
  puts "What is your name, user?"
  username = gets.chomp
  puts "Cool! Nice to meet you #{username}"
  
  if username.downcase == "drake cula"
    suspect_name = true
    elsif username == "tu fang"
    suspect_name = true
  else suspect_name = false
  end 



#ask the user for their age
  puts "How old are you?"
  age = gets.chomp
  puts "Alright, so you're #{age} years old. Great!"
  
  if age.to_i < 100
  correct_age = true
  else 
  correct_age = false
  end



#ask the user if they would like to order garlic bread

  puts "Would you like us to order you some garlic bread? (y/n)"
  
  while input = gets.chomp 
  	case input
  when "y"
  	likes_garlic_bread = true
  	puts "Mmm... Garlic bread..."
  	break
  when "n"
  	likes_garlic_bread = false
  	puts "How can you not like garlic bread?"
  	break 
  else puts "I'm sorry, I didn't understand you. Please enter 'y' or 'n'."
  end 
  end



#ask the user if they would like to enroll in company health insurance

  puts "Would you like us to enroll you in company health insurance? (y/n)"
  
  while input = gets.chomp
    case input  
  when "y"
    wants_insurance = true
      puts "Ok, we'll put you down for insurance"
    break
  when "n" 
    wants_insurance = false 
    puts  "Ok, we wont sign you up for insurance then."
    break
  else puts "I'm sorry, I didn't understand you. Please enter 'y' or 'n'."
  end
  end 

puts "suspect_name?:"
puts suspect_name
puts "correct age?:"
puts correct_age
puts "likes garlic bread?:"
puts likes_garlic_bread
puts "wants insurance?:"
puts wants_insurance

result = ""

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
  if correct_age && (likes_garlic_bread || wants_insurance)
    result = "probably not a vampire."
    
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
  elsif !correct_age && (!likes_garlic_bread || !wants_insurance)
    result = "probably a vampire."
  
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  elsif !correct_age && (!likes_garlic_bread && !wants_insurance)
    result = "almost certainly a vampire."
    
    # Otherwise, print “Results inconclusive.”
  else 
    result = "results inconclusive"
  end
 
   
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
  if suspect_name
    result = "Definitely a vampire"
  end 
  
 
puts "The result is:"
puts result

employees_remaining += -1
end while employees_remaining > out_of_students

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



