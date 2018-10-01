class Activity < ApplicationRecord
  belongs_to :teacher
  belongs_to :camp
  belongs_to :skill
  has_many :student_activities
  has_many :students, through: :student_activities
end
