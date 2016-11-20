def encrypt(string)
  index = 0
  newword = ""
  
  while index < string.length
    if string[index] == "z"
      newword += "a"
      index += 1
    elsif string[index] == " "
      newword += " "
      index += 1
      
    else 
      string[index] = string[index].next
      newword += string[index]
      index += 1
    end
  end
  puts newword
end 
  
def decrypt(string)
  
  index = 0
  newword = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  
  while index < string.length
    if string[index] == " "
      newword += " "
      index += 1
    else
    newword += alphabet[alphabet.index(string[index])-1]
    index += 1
    end
  end
  puts newword
end

puts "would you like to decrypt or encrypt? (decrypt/encrypt)"
answer = gets.chomp

puts "give me your password."
password = gets.chomp

if answer == "decrypt"
  decrypt(password)
elsif answer == "encrypt"
  encrypt(password)
end