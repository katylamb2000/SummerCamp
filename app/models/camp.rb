class Camp < ApplicationRecord
  has_many :camp_teachers
  has_many :teachers, through: :camp_teachers
  has_many :activities
  has_many :students
  has_many :camp_skills
  has_many :skills, through: :camp_skills

end
