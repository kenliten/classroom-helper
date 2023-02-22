require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Alergies", with: @student.alergies
    fill_in "Birth book", with: @student.birth_book
    fill_in "Birth date", with: @student.birth_date
    fill_in "Birth folio", with: @student.birth_folio
    fill_in "Check in date", with: @student.check_in_date
    fill_in "Check out date", with: @student.check_out_date
    fill_in "Classroom", with: @student.classroom_id
    fill_in "Drugs", with: @student.drugs
    fill_in "Emergency contact name", with: @student.emergency_contact_name
    fill_in "Emergency contact phone", with: @student.emergency_contact_phone
    fill_in "Firstname", with: @student.firstname
    fill_in "Gender", with: @student.gender
    fill_in "Guardian relationship", with: @student.guardian_relationship
    fill_in "Initial condition", with: @student.initial_condition
    fill_in "Lastname", with: @student.lastname
    fill_in "Nationality", with: @student.nationality
    fill_in "User", with: @student.user_id
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Alergies", with: @student.alergies
    fill_in "Birth book", with: @student.birth_book
    fill_in "Birth date", with: @student.birth_date
    fill_in "Birth folio", with: @student.birth_folio
    fill_in "Check in date", with: @student.check_in_date
    fill_in "Check out date", with: @student.check_out_date
    fill_in "Classroom", with: @student.classroom_id
    fill_in "Drugs", with: @student.drugs
    fill_in "Emergency contact name", with: @student.emergency_contact_name
    fill_in "Emergency contact phone", with: @student.emergency_contact_phone
    fill_in "Firstname", with: @student.firstname
    fill_in "Gender", with: @student.gender
    fill_in "Guardian relationship", with: @student.guardian_relationship
    fill_in "Initial condition", with: @student.initial_condition
    fill_in "Lastname", with: @student.lastname
    fill_in "Nationality", with: @student.nationality
    fill_in "User", with: @student.user_id
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
