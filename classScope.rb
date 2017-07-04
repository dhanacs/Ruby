# Class scope
# By default methods are public in a class
# Everything after the public keyword through the end of the class definition will now be public unless we say otherwise

class Dog
	def initialize(name, breed)
		@name = name
		@breed = breed
		setId
    end

    private
    def setId
    	@id = 1 + rand(100)
	end

	public
    def getId
    	puts @id
    end

    def bark
        puts "Woof!"
    end
end

dog = Dog.new("tommy", "doberman")
dog.bark
dog.getId