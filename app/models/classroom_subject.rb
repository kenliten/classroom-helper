class ClassroomSubject < ApplicationRecord
  belongs_to :subject
  belongs_to :classroom
end
