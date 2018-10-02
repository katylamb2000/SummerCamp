class Teacher < ApplicationRecord
  has_many :teacher_skills
  has_many :skills, through: :teacher_skills
  has_many :activities
  has_many :skills, through: :teacher_skills
  has_one :camp_teacher

  def self.search(params)
   @teacher = Teacher.select{ |teacher| teacher.name == params[:search]}

    #
    #


end
end
