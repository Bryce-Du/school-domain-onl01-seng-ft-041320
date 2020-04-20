# code here!
class School
  attr_accessor :roster
  attr_reader :name
  def initialize (name)
    @name = name
    @roster = {}
    
  end
  def add_student (name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  def grade (grade_level)
    @roster[grade_level]
  end
  def sort 
    @roster.each do |grade, students|
      puts grade
      puts students
      students.sort!
      puts students
    end
    
    @roster
  end
end