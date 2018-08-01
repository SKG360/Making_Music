require 'pry'
class Student
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @instrument
    @student = Hash.new(0)
    @enrolled = true
  end

  def enrolled?
    @enrolled
  end

  def instrument

  end

  def assign_instrument(instrument)
    @instrument = instrument
  
  end

end
