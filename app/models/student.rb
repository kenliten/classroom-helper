class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :user
  has_many :student_guardians

  def fullname
    return "#{self.firstname} #{self.lastname}"
  end

  def age
    birth = self.birth_date
    now = Date.today
    return now.year - birth.year - ((now.month > birth.month || (now.month == birth.month && now.day >= birth.day)) ? 0 : 1)
  end
end
