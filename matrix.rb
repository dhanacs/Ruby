def solve(matrix, n)
	sum1 = 0
	sum2 = 0

	for i in 0..n-1
		sum1 += matrix[i][i]
	end

	for i in 0..n-1
		j = n - 1 - i
		sum2 += matrix[i][j]
	end

	return (sum1 - sum2).abs
end

n = gets.strip.to_i
matrix = Array.new(n) { Array.new(n) }

i = 0
n.times do
	a = gets.split(' ')

	j = 0
	a.each do |value|
		matrix[i][j] = value.to_i
		j += 1
	end

	i += 1
end

result = solve(matrix, n)
puts(result)