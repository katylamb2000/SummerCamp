class Skill < ApplicationRecord
  has_many :teacher_skills
  has_many :actvities
  has_many :camp_skills
  has_many :skills, through: :teacher_skills
  has_many :camps, through: :camp_skills
end
