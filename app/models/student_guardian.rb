class StudentGuardian < ApplicationRecord
  belongs_to :student

  def fullname
    return "#{self.firstname} #{self.lastname}"
  end
end
