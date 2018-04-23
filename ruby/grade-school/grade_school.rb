class School
  attr_accessor :student_name, :student_grade, :students, :students_array

  def initialize
    @student_name = student_name
    @student_grade = student_grade
    @students = {}
    @students_array = []
  end

  def add(student_name, student_grade)
    unless @students[student_grade]
      @students[student_grade] = [student_name]
    else
      @students[student_grade] << student_name
    end
  end

  def students(grade)
    if @students[grade]
      @students[grade].sort
    else
      []
    end
  end

  def students_by_grade
    @students.keys.sort.each do |grade|
      @students_array << {grade: grade, students: @students[grade].sort}
    end
    @students_array
  end

end

module BookKeeping
  VERSION = 3
end
