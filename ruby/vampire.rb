out_of_students = 0 

puts "How many employees are you processing today?"
employees_remaining = gets.chomp.to_i

begin
puts "What is your name user?"
user_name = gets.chomp

if user_name == "Drake Cula"
  suspect_name = true
  elsif user_name == "Tu Fang"
  suspect_name = true
else suspect_name = false
end 



puts "How old are you?"
user_age = gets.chomp

if user_age.to_i < 100
correct_age = true
else 
correct_age = false
end
  


puts "Hey, would you like us to order you garlic bread? (y/n)"
likes_garlic_bread = gets.chomp

if likes_garlic_bread == "y"
likes_garlic_bread = true
else likes_garlic_bread = false
	end 
	
	
	
puts "Would you like company health insurance? (y/n)"
wants_insurance = gets.chomp

if wants_insurance == "y"
	wants_insurance = true
else wants_insurance = false
end

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if correct_age && (likes_garlic_bread || wants_insurance)
  probably_a_vampire = false
else probably_a_vampire = true
end 


# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”   
if correct_age && (likes_garlic_bread || wants_insurance)
  probably_not_a_vampire = true
else probably_not_a_vampire = false
end

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
if correct_age && (likes_garlic_bread || wants_insurance)
  almost_certainly_a_vampire = false
else almost_certainly_a_vampire = true
end

# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
if suspect_name 
 is_definitely_a_vampire = true
 else is_definitely_a_vampire = false
end


alergies = nil 
other_alergies = nil 

puts "Are you alergic to anything? Type 'done' when finished."
alergies = gets.chomp 
if alergies == "sunshine"
probably_a_vampire = true
end
until alergies == "done"
puts "Any other alergies?"
alergies = gets.chomp
end 

puts "is probably a vampire"
puts probably_a_vampire

puts "is probably not a vampire"
puts probably_not_a_vampire

puts "is almost certainly a vampire"
puts almost_certainly_a_vampire

puts "is definitely a vampire"
puts is_definitely_a_vampire

employees_remaining += -1
end while employees_remaining > out_of_students


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


    
    
    
    
