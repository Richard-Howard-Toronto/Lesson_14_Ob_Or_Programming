#people.rb

require 'pry'

class Person

  def initialize(full_name)
    @full_name = full_name
  end

  def greeting
    @full_name
  end


end


class Student < Person

  # the initialize is from the PERSON class

  def greeting
    return "Hi, I am a student and my name is #{super}"
  end

  def learn
    return "I get it, says #{@full_name}"
  end

end


class Instructor < Person

  # the initialize is from the PERSON class

  def greeting
    return "Hi, I am a prof and my name is #{super}"
  end

  def teach
    return "Says #{@full_name}, everything in Ruby is an object"
  end

end

#-------------- end of class

albert = Instructor.new('Albert_Einstein')
joe  = Student.new('Joe_Bloggs')
nadia = Instructor.new('Nadia_Comenichi')
chris = Instructor.new('Chris')

#Create an instance of Instructor whose name is "Nadia" and call her greeting.
p nadia.greeting

p joe.greeting
p albert.greeting

#Create an instance of Student whose name is "Chris" and call his greeting.
p chris.greeting

p joe.learn
p albert.teach

#YOU CANNOT CALL A METHOD ON A DIFFERENT CLASS FROM WHERE THE METHOD IS DEFINED.  FOR EXAMPLE, A TEACHER 'TEACHES' WHICH WE DEFINE AS A METHOD.  A STUDENT 'LEARNS' WHICH WE DEFINE AS A METHOD.
