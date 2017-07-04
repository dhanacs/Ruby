# Example for a class variable & class method

class Person
  @@peopleCount = 0
  
  def initialize(name)
    @name = name
    @@peopleCount += 1
  end
  
  def self.numberOfInstances
 	return @@peopleCount
  end

  # Class method
  def Person.greet
  	puts "Cool buddy!"
  end
end

yuki = Person.new("Yukihiro")
david = Person.new("David")
Person.greet

puts "Number of Person instances: #{Person.numberOfInstances}"