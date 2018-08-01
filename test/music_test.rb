require 'minitest/autorun'
require 'minitest/pride'
require './lib/instrument'
require './lib/student'
require './lib/music'

class MusicTest < Minitest::Test
  def test_if_it_exists
    music_class = MusicClass.new

    assert_instance_of  MusicClass, music_class
  end

  def test_student_count_equals_zero
    music_class = MusicClass.new

    assert_equal 0, music_class.student_count
  end

  def test_if_students_are_added
    music_class = MusicClass.new

    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)

    music_class.add_student(student_1)
    music_class.add_student(student_2)
    music_class.add_student(student_3)

    assert_equal 3, music_class.student_count
  end

  def test_the_list_of_students
    music_class = MusicClass.new

    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)

    music_class.add_student(student_1)
    music_class.add_student(student_2)
    music_class.add_student(student_3)

    assert_equal "Anna, Charlie, Jeff", music_class.student_list
  end

  def test_the_average_age_of_students
    music_class = MusicClass.new

    assert_equal 0, music_class.average_age

    student_1 = Student.new("Anna", 12)
    student_2 = Student.new("Charlie", 14)
    student_3 = Student.new("Jeff", 13)

    music_class.add_student(student_1)
    music_class.add_student(student_2)
    music_class.add_student(student_3)

    assert_equal 13, music_class.average_age
  end


end
