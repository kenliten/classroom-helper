class ClassroomSubjectsController < ApplicationController
  before_action :set_classroom_subject, only: %i[ show edit update destroy ]

  # GET /classroom_subjects or /classroom_subjects.json
  def index
    @classroom_subjects = ClassroomSubject.all
  end

  # GET /classroom_subjects/1 or /classroom_subjects/1.json
  def show
  end

  # GET /classroom_subjects/new
  def new
    @classroom_subject = ClassroomSubject.new
  end

  # GET /classroom_subjects/1/edit
  def edit
  end

  # POST /classroom_subjects or /classroom_subjects.json
  def create
    if (params[:subject_id])
      @subject = Subject.find(params[:subject_id])
      @classroom_subject = @subject.classroom_subjects.create(classroom_subject_params)
      redirect_to subject_path(@subject)
    elsif (params[:classroom_id])
      @classroom = Classroom.find(params[:classroom_id])
      @classroom_subject = @classroom.classroom_subjects.create(classroom_subject_params)
      redirect_to classroom_path(@classroom)
    end
  end

  # PATCH/PUT /classroom_subjects/1 or /classroom_subjects/1.json
  def update
    respond_to do |format|
      if @classroom_subject.update(classroom_subject_params)
        format.html { redirect_to classroom_subject_url(@classroom_subject), notice: "Classroom subject was successfully updated." }
        format.json { render :show, status: :ok, location: @classroom_subject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @classroom_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classroom_subjects/1 or /classroom_subjects/1.json
  def destroy
    @classroom_subject.destroy

    respond_to do |format|
      format.html { redirect_to classroom_subjects_url, notice: "Classroom subject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom_subject
      @classroom_subject = ClassroomSubject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def classroom_subject_params
      params.require(:classroom_subject).permit(:subject_id, :classroom_id)
    end
end
