class Person

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def greetings
    puts "Hi my name is #{@name}"
  end

end


class Student < Person
  def learn
    puts "I get it !"
  end
end


class Instructor < Person
  def teach
    puts " Everything in Ruby is an Object"
  end
end

chris = Student.new("Chris")
puts chris.inspect
puts chris.greetings
puts chris.learn
puts chris.teach   #teach method is not defined inside student class

nadia = Instructor.new("Nadia")
puts nadia.inspect
puts nadia.greetings
puts nadia.teach
