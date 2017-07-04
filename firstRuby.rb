def arrayLogic(n)
	a = Array.new
	n = n.to_i

	for i in 0...n do
		a.push(i + 1)
	end

	# Sort thr array in descending order
	a.sort! {|x, y| y <=> x}

	for element in a do
		print "#{element} "
	end	
end

def combinedComparison

	hash =
	{
		one: 1,
		two: 2,
		three: 3
	}

	puts hash[:two]

	puts "hello" <=> "hell"
	puts 55 <=> 55
	puts 12 <=> 55
end

def hashingSample
	puts "Enter the text: "
	text = gets.chomp
	words = text.split(" ")

	frequencies = Hash.new(0)

	# Hash the words and their frequencies
	words.each do |word|
	   if frequencies.key?(word)
	       frequencies[word] += 1
	    else
	        frequencies[word] = 1
	    end
	end

	# Sort the words by their frequencies
	frequencies = frequencies.sort_by do |word, frequency|
	   frequency 
	end

	frequencies.reverse!

	# Print the words with their frequencies
	frequencies.each do |word, frequency|
	   puts word + " #{frequency}"
	end
end

def caseStatements
	puts "Hello there!"
	greeting = gets.chomp

	case greeting
		when "English" then puts "Hello!"
		when "French" then puts "Bonjour!"
		when "German" then puts "Guten Tag!"
		when "Finnish" then puts "Haloo!"
		else puts "I don't know that language!"
	end

	# Conditional Assignment "||="
	# Set the variable if it is nil
	flag = nil
	flag ||= true
	puts flag
	flag ||= false
	puts flag	
end

# Function without a return statement
# Ruby returns the last executed statement
def multipleOfThree(n)
	n = n.to_i
	n % 3 == 0 ? "True" : "False"
end

def loopingSample
	# upto method
	'L'.upto('P') do |c|
    	puts c
	end
end

def collectMethod
	a = [1, 2, 3, 4, 5]

	b = a.collect { |value| 2 * value }
	b.each { |value| puts "#{value} " }
end

# Methods that accept blocks have a way of transferring control from the calling method to the block and back again. 
def blockTest
	puts "Method!"
	puts "Yield!"
	yield
	puts "Method!"
end

def yieldTest(name)
	puts "Method!"
	yield("Kim")
	puts "Method!"
	yield(name)
	puts "Method!"
end

def testMethod
	#blockTest { puts "Block!" }

	yieldTest("Eric") { |n| puts "My name is #{n}." }
	yieldTest("Dhana") { |n| puts "My name is #{n}." }
end

# Blocks are not objects in Ruby
# Proc is a saved block
def procTest
	# Create a new Proc
	multiplesOfThree = Proc.new { |n| n % 3 == 0 }

	# (1..100).to_a gives an array of integers from 1 to 100
	# "Array.select" selects only the items for which the original block returned true
	a = (1..100).to_a
	a.select!(&multiplesOfThree)
	a.each { |value| puts "#{value} " }

	# Calling a Proc
	hello = Proc.new { puts "Hello!" }
	hello.call
end

def lambdaTest

end

#===========================================================
#n = gets.chomp
#arrayLogic(n)
#hashingSample
#caseStatements
#puts multipleOfThree(n)
#loopingSample
#collectMethod
#testMethod
procTest
#===========================================================

# Notes

# '?' method that returns a boolean

# Check if an object responds to a method
# puts age.respond_to?(:next)

# "<<" can be used to push an element to the end of the array
# alphabet = Array.new
# alphabet << "d"

# "<<" can be used to concatenate a string to the end of a string
# s = "Hello "
# s << "Buddy!"