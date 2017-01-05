module Shout 

  def self.yell_angrily(words)
    words + "!!!" + " D:<"
  end

  def self.yell_happily(words)
  	words + "!!!" + " :D" + " omg"
  end 

end 

p Shout.yell_angrily("Seize the means of production")

p Shout.yell_happily("We seized those means")
