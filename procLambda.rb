# Lambda & Proc difference
# lambda checks the number of arguments passed to it, while a proc does not
# when a lambda returns, it passes control back to the calling method.
# when a proc returns, it does so immediately, without going back to the calling method.

def sampleProc
  procOne = Proc.new { return "Proc block!" }
  procOne.call
  "Last Proc statement!"
end

puts sampleProc

def sampleLambda
  lambdaOne = lambda { return "Lambda block!" }
  lambdaOne.call
  "Last Lambda statement!"
end

puts sampleLambda