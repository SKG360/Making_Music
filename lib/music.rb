class MusicClass

  def initialize
    @classmates = []
  end

  def add_student(student)

    @classmates << student
    student
    # binding.pry
  end

  def student_count
    @classmates.count
  end

  def student_list
    @classmates.map do |classmate|
      classmate.name
    end.join(", ")
  end

  def average_age
    if student_count == 0
      return 0
    end

    age_sum = @classmates.sum do |classmate|
      classmate.age
    end

     age_sum / student_count
  end

end
