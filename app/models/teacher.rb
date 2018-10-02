class Teacher < ApplicationRecord
  has_many :teacher_skills
  has_many :skills, through: :teacher_skills
  has_many :activities
  has_many :skills, through: :teacher_skills
  has_one :camp_teacher

end
