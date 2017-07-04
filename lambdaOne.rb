# Lambda to select symbols from an array

a = ["hello", :symbolOne, "world", :symbolTwo, 5, 10, :symbolThree]

filter = lambda { |element| element.is_a? Symbol }
symbols = a.select(&filter)

symbols.each do |element|
	puts element
end