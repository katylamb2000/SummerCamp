class Student < ApplicationRecord
  belongs_to :camp, optional: true
  has_many :student_activities
  has_many :activities, through: :student_activities
end
