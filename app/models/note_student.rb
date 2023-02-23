class NoteStudent < ApplicationRecord
  belongs_to :note
  belongs_to :student
end
