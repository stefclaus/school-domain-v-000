# code here!

class School 
  attr_accessor :school_name, :name, :grade, :roster

  def initialize(school_name, roster = {})
    @school_name = school_name
    @roster = {}
  end 

  
  def add_student(name, grade)
      ( @roster[grade] ||= [] ) << name 
    end 
  
  def grade(grade)
   @roster.each do |key, name|
     if key == grade 
       return name 
      end 
    end 
  end 
  
 def sort
   # @roster.sort_by.to_h {|key,value| value[name]} 
  @roster.each do |key, value|
  @roster[key] = value.sort{ |a,b| a[0]<=>b[0] }
  end 
  end 
    
end #ends class 



#school = School.new("Bayside High School")
#school.roster
#school.add_student("Zach Morris", 9)
#school.roster