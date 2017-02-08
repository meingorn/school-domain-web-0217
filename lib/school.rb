class School

  attr_reader :name, :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    @roster[grade]||=[]
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map{|grade, arr| arr.sort!}
    @roster
  end

end
