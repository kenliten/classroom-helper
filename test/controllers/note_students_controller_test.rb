require "test_helper"

class NoteStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note_student = note_students(:one)
  end

  test "should get index" do
    get note_students_url
    assert_response :success
  end

  test "should get new" do
    get new_note_student_url
    assert_response :success
  end

  test "should create note_student" do
    assert_difference("NoteStudent.count") do
      post note_students_url, params: { note_student: { note_id: @note_student.note_id, student_id: @note_student.student_id } }
    end

    assert_redirected_to note_student_url(NoteStudent.last)
  end

  test "should show note_student" do
    get note_student_url(@note_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_note_student_url(@note_student)
    assert_response :success
  end

  test "should update note_student" do
    patch note_student_url(@note_student), params: { note_student: { note_id: @note_student.note_id, student_id: @note_student.student_id } }
    assert_redirected_to note_student_url(@note_student)
  end

  test "should destroy note_student" do
    assert_difference("NoteStudent.count", -1) do
      delete note_student_url(@note_student)
    end

    assert_redirected_to note_students_url
  end
end
