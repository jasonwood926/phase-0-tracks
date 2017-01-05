class Puppy

  def initalize()
    puts "Initializing new puppy instance..."
  end 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(num_borks)
    #num_borks.to_i.times puts "Bork"
    for counter in 1..num_borks
      puts "bork"
    end
  end
  
  def roll_over()
    puts "*rolls over*"  
  end
  
  def dog_years(num_years)
    num_years * 7
  end 
  
  def high_ten()
    puts "*puppy does an adorable high ten*"
  end
  
end 


new_puppy = Puppy.new()
new_puppy.fetch("bagel")
new_puppy.speak(3)
new_puppy.roll_over()
p new_puppy.dog_years(3)
new_puppy.high_ten()


class MetalBand 
  
  def initialize(name)
    puts "Initializing MetalBand #{name}..."
    @name = name 
  end 
  
  def blast_beats(bpm)
    puts "Drummer of #{@name} does a blast at #{bpm} bpm"
  end 
  
  def solo(bars)
    puts "Guitarist of #{@name} shreds for #{bars} bars"
  end 
  
  def to_s()
    "#{@name}"
  end
  
end 

array = []

for counter in 0..49
 array[counter] = MetalBand.new("band#{counter + 1}")
end 

# Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.


array.each {|counter| puts counter.solo(8)}



