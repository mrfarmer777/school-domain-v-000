# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name=name
    @roster={}

  end

  def add_student(student,gr)
    if !@roster[gr]
      @roster[gr]=[]
    end
    @roster[gr]<<student
  end

  def grade(gr)
    @roster[gr]
  end

  def sort
    stus=[]
    @roster.each do |gr|
      gr.each do |stu|
        stus<<stu
      end
    end
    stus.sort!
    return stus
  end
end
