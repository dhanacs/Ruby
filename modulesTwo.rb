# Including a module within a class

class Angle
	include Math

	def initialize(radians)
		@radians = radians
	end
	
	def cosine
		puts cos(@radians)
	end
end

acute = Angle.new(Math::PI / 4)
acute.cosine