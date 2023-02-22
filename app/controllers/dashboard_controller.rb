class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @classrooms = Classroom.all.select { |c| c.user_id == current_user.id }
    @subjects = Subject.all.select { |s| s.user_id == current_user.id }
    @students = current_user.students
  end

  def tools
  end

  def profile
  end
end
