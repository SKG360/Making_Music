require 'minitest/autorun'
require 'minitest/pride'
require './lib/instrument'
require './lib/student'

class StudentTest < Minitest::Test
  def test_if_student_name_passes
    instrument = Instrument.new("Piano")
    student    = Student.new("Anna", 12)

    assert_equal "Anna", student.name
    assert_equal 12, student.age
  end

  def test_if_instrument_is_nil
    instrument = Instrument.new("Piano")
    student    = Student.new("Anna", 12)

    assert_equal nil, student.instrument
  end

  def test_if_instrument_is_assigned

    instrument = Instrument.new("Piano")
    student    = Student.new("Anna", 12)

    assert_equal instrument, student.assign_instrument(instrument)
  end

  def test_if_new_students_are_passed
    skip
    instrument_1 = Instrument.new("Piano")
    instrument_2 = Instrument.new("Trumpet")
    instrument_3 = Instrument.new("Tambourine")

    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)

    student_1.assign_instrument(instrument_1)
    student_2.assign_instrument(instrument_2)
    student_3.assign_instrument(instrument_3)

    assert_equal [instrument_1], student_1.instrument
  end
end
