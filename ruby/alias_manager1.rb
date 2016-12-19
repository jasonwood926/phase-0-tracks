



# write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:

# Swapping the first and last name.

# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides
#  the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.




# def alias_generator(name)
#   #sets up array of reversed name with space and letters 
#   name_ord_reversed = name.split(' ').reverse
#   name_ord_reversed = name_ord_reversed.join(" ")

#   vowels = "aeiou"
#   consonants = "bcdfghjklmnpqrstvwxyz"
#   new_alias = ""

#   #changes vowels to next vowel up 
#   name_ord_reversed.each_char do |char|

#     if vowels.include? char
      
#       index = vowels.index char 

#       char = vowels[index + 1]
      
#     elsif consonants.include? char

#       index = consonants.index char 

#       char = consonants[index + 1]
      
#     elsif char == " "
      
#       char = " "

#     end

#     new_alias << char

#   end
  
#   new_alias

# end 
# 


VOWELS = "aeiou"
CONSONANTS = "bcdfghjklmnpqrstvwxyz"


def check_char(char, char_arr) 
  index = char_arr.index char
  if index ==  char_arr.length - 1
    char = char_arr[0]
  else 
    char = char_arr[index + 1]
  end
end

def char_generator(char) 
  if VOWELS.include? char
    char = check_char(char, VOWELS) 
  elsif CONSONANTS.include? char
    char = check_char(char, CONSONANTS) 
  else
    char = char 
  end
end

def alias_generator(name) 
    #sets up array of reversed name with space and letters 
    name_ord_reversed = name.split(' ').reverse
    name_ord_reversed = name_ord_reversed.join(" ")
    #changes vowels to next vowel up 
    name_ord_reversed.chars.map {|char| char = char_generator(char)}.join("")
end



p alias_generator("felicia torres")
p alias_generator("fulicia tozres")
# p name_ord_reversed[3]  

names = []
fake_names = []

loop do 
  puts "please enter a name you'd like an alias for: (enter 'quit' when done.)"
  name = gets.chomp
  case name
  when "quit"
  name == ""
  break 
  when name
  puts alias_generator(name)
  names << name
  fake_names << alias_generator(name)
end 
end 

p fake_names
p names 

x = 0
until x >= names.length do 
puts "#{names[x]} is #{fake_names[x]}"
x += 1
end 



  