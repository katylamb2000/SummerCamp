class CampTeacher < ApplicationRecord
  belongs_to :camp
  belongs_to :teacher
end
