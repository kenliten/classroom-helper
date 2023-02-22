class Classroom < ApplicationRecord
  belongs_to :user
  has_many :classroom_subjects
  has_many :subjects, through: :classroom_subjects
end
