puts "What is your hamsters name?"
answer_1 = gets.chomp

puts "How loud is the hamster? (1-10)"
answer_2 = gets.chomp.to_i

puts "What color fur does the hamster have?"
answer_3 = gets.chomp

puts "Is the hamster is a good candidate for adoption? (y/n)"
answer_4 = gets.chomp

if answer_4 == "y"
  answer_4 = true
  else answer_4 = false
end

puts "How old do you think they are?"
answer_5 = gets.chomp.to_i

if answer_5 == ""
    answer_5 = nil
end

answers = [answer_1, answer_2, answer_3, answer_4, answer_5]

puts "So, your hamster's name is #{answer_1}."
puts "Your hamster's loudness from 1-10 is #{answer_2}"
puts "Your hamster's fur color is #{answer_3}"
puts "Is your hamster a good candidate for adoption? #{answer_4}"
puts "Estimated age of your hamster is #{answer_5}"
