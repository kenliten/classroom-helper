class NoteStudentsController < ApplicationController
  before_action :set_note_student, only: %i[ show edit update destroy ]

  # GET /note_students or /note_students.json
  def index
    @note_students = NoteStudent.all
  end

  # GET /note_students/1 or /note_students/1.json
  def show
  end

  # GET /note_students/new
  def new
    @note_student = NoteStudent.new
  end

  # GET /note_students/1/edit
  def edit
  end

  # POST /note_students or /note_students.json
  def create
    @note_student = NoteStudent.new(note_student_params)

    respond_to do |format|
      if @note_student.save
        format.html { redirect_to note_student_url(@note_student), notice: "Note student was successfully created." }
        format.json { render :show, status: :created, location: @note_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @note_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /note_students/1 or /note_students/1.json
  def update
    respond_to do |format|
      if @note_student.update(note_student_params)
        format.html { redirect_to note_student_url(@note_student), notice: "Note student was successfully updated." }
        format.json { render :show, status: :ok, location: @note_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_students/1 or /note_students/1.json
  def destroy
    @note_student.destroy

    respond_to do |format|
      format.html { redirect_to note_students_url, notice: "Note student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note_student
      @note_student = NoteStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_student_params
      params.require(:note_student).permit(:note_id, :student_id)
    end
end
