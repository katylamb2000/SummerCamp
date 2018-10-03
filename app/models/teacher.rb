class Teacher < ApplicationRecord
  has_many :teacher_skills
  has_many :skills, through: :teacher_skills
  has_many :activities
  has_many :skills, through: :teacher_skills
  has_one :camp_teacher
  has_one :camp, through: :camp_teacher

  def self.search(params)
    if !params[:name].blank? && !params[:skill].blank?
     @teacher = Teacher.select{ |teacher| teacher.nationality == params[:nationality] && teacher.skills.include?(Skill.find(params[:skill])) }
  #	    elsif !params[:name].blank?
  #	      @teacher = Teacher.select{ |teacher| teacher.name == params[:name] }
   elsif !params[:skill].blank?
     @teacher = Teacher.select{ |teacher| teacher.skills.include?(Skill.find(params[:skill]))}
    else
    @teacher = []
  end
end

def hire_teacher
  @teacher.camp << self
  redirect_to @camp
end

end
