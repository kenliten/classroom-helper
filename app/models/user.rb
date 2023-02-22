class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def fullname
    "#{self.firstname} #{self.lastname}"
  end

  has_many :classrooms
  has_many :students
  has_many :subjects
end
