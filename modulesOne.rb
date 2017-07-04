# Modules are very much like classes, only modules can't create instances and can't have subclasses.
# They're just used to store things!

# Import the date module
require 'date'

module Circle

  PI = 3.1415
  
  def Circle.area(radius)
    PI * radius ** 2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end

# Print the constant PI from Math module
puts Math::PI

# Call the method 'today' from Date module
puts Date.today