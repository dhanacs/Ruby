# Inheritance

class Error
  def displayError
    puts "Error!"
  end
end

class DivideByZeroError < Error
end

error = DivideByZeroError.new
error.displayError