class Subject < ApplicationRecord
  belongs_to :user
  has_many :classroom_subjects
  has_many :classrooms, through: :classroom_subjects
end
