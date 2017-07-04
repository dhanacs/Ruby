# include mixes a module's methods in at the instance level,
# the extend keyword mixes a module's methods at the class level.

module MyModule
	def greet
		puts "Hello Dhana!"
	end
end

class MyClass
	extend MyModule
end

MyClass.greet