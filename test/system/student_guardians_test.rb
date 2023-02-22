require "application_system_test_case"

class StudentGuardiansTest < ApplicationSystemTestCase
  setup do
    @student_guardian = student_guardians(:one)
  end

  test "visiting the index" do
    visit student_guardians_url
    assert_selector "h1", text: "Student guardians"
  end

  test "should create student guardian" do
    visit student_guardians_url
    click_on "New student guardian"

    fill_in "Address", with: @student_guardian.address
    fill_in "City", with: @student_guardian.city
    fill_in "Education level", with: @student_guardian.education_level
    fill_in "Firstname", with: @student_guardian.firstname
    fill_in "Lastname", with: @student_guardian.lastname
    fill_in "Nid", with: @student_guardian.nid
    fill_in "Notes", with: @student_guardian.notes
    fill_in "Occupation", with: @student_guardian.occupation
    fill_in "Phone", with: @student_guardian.phone
    fill_in "Place", with: @student_guardian.place
    fill_in "Relationship", with: @student_guardian.relationship
    fill_in "Student", with: @student_guardian.student_id
    fill_in "Work phone", with: @student_guardian.work_phone
    click_on "Create Student guardian"

    assert_text "Student guardian was successfully created"
    click_on "Back"
  end

  test "should update Student guardian" do
    visit student_guardian_url(@student_guardian)
    click_on "Edit this student guardian", match: :first

    fill_in "Address", with: @student_guardian.address
    fill_in "City", with: @student_guardian.city
    fill_in "Education level", with: @student_guardian.education_level
    fill_in "Firstname", with: @student_guardian.firstname
    fill_in "Lastname", with: @student_guardian.lastname
    fill_in "Nid", with: @student_guardian.nid
    fill_in "Notes", with: @student_guardian.notes
    fill_in "Occupation", with: @student_guardian.occupation
    fill_in "Phone", with: @student_guardian.phone
    fill_in "Place", with: @student_guardian.place
    fill_in "Relationship", with: @student_guardian.relationship
    fill_in "Student", with: @student_guardian.student_id
    fill_in "Work phone", with: @student_guardian.work_phone
    click_on "Update Student guardian"

    assert_text "Student guardian was successfully updated"
    click_on "Back"
  end

  test "should destroy Student guardian" do
    visit student_guardian_url(@student_guardian)
    click_on "Destroy this student guardian", match: :first

    assert_text "Student guardian was successfully destroyed"
  end
end
