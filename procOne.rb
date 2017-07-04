ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

underHundred = Proc.new { |element| element if element < 100 }

agesFiltered = ages.select(&underHundred)
agesFiltered.each do |age|
	puts age
end