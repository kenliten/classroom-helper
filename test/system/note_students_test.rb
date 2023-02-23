require "application_system_test_case"

class NoteStudentsTest < ApplicationSystemTestCase
  setup do
    @note_student = note_students(:one)
  end

  test "visiting the index" do
    visit note_students_url
    assert_selector "h1", text: "Note students"
  end

  test "should create note student" do
    visit note_students_url
    click_on "New note student"

    fill_in "Note", with: @note_student.note_id
    fill_in "Student", with: @note_student.student_id
    click_on "Create Note student"

    assert_text "Note student was successfully created"
    click_on "Back"
  end

  test "should update Note student" do
    visit note_student_url(@note_student)
    click_on "Edit this note student", match: :first

    fill_in "Note", with: @note_student.note_id
    fill_in "Student", with: @note_student.student_id
    click_on "Update Note student"

    assert_text "Note student was successfully updated"
    click_on "Back"
  end

  test "should destroy Note student" do
    visit note_student_url(@note_student)
    click_on "Destroy this note student", match: :first

    assert_text "Note student was successfully destroyed"
  end
end
