class Santa

   attr_accessor :gender, :age

  attr_reader :ethnicity

	def initialize(gender, ethnicity)
		puts "Initializing robo-santa9000 instance"
		@gender = gender 
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak()
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end
	
	def celebrate_birthday()
		@age = @age + 1
	end 


	def get_mad_at(name)
		if @reindeer_ranking.include?(name)
			temp_name = name 
			@reindeer_ranking.delete(name) 
			@reindeer_ranking.push (temp_name)
			#puts reindeer's name as last place in the array 
		else 
			puts "name not found"
			#do nothing or print error message
		end
  end 
  
  
  # def gender=(gender)
  #   @gender = gender 
  # end 
  
	def to_s
    "#{@gender}, #{@ethnicity}, age: #{@age}" 
  end

end 






class Reindeer
  def initialize(name)
    @name = name
  end
  
  attr_reader :name
end

reindeer = Reindeer.new("Blitzen")
reindeer.name()





# new_santa = Santa.new()
# new_santa.speak()
# new_santa.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

50.times do |x|
  temp_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
   temp_santa.age = rand(140)
   santas << temp_santa
end 



puts santas 


  




# names.each do |name|
#   puts "Creating a puppy named #{name} ..."
#   puppies << Puppy.new(name)
#   puts "There are now #{puppies.length} Puppy instances in the array"
#   puts "----"
# end






