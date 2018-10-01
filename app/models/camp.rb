class Camp < ApplicationRecord
  has_many :teachers
  has_many :activities
  has_many :students
  has_many :camp_skills
  has_many :skills, through: :camp_skills

end
