require "application_system_test_case"

class ClassroomSubjectsTest < ApplicationSystemTestCase
  setup do
    @classroom_subject = classroom_subjects(:one)
  end

  test "visiting the index" do
    visit classroom_subjects_url
    assert_selector "h1", text: "Classroom subjects"
  end

  test "should create classroom subject" do
    visit classroom_subjects_url
    click_on "New classroom subject"

    fill_in "Classroom", with: @classroom_subject.classroom_id
    fill_in "Subject", with: @classroom_subject.subject_id
    click_on "Create Classroom subject"

    assert_text "Classroom subject was successfully created"
    click_on "Back"
  end

  test "should update Classroom subject" do
    visit classroom_subject_url(@classroom_subject)
    click_on "Edit this classroom subject", match: :first

    fill_in "Classroom", with: @classroom_subject.classroom_id
    fill_in "Subject", with: @classroom_subject.subject_id
    click_on "Update Classroom subject"

    assert_text "Classroom subject was successfully updated"
    click_on "Back"
  end

  test "should destroy Classroom subject" do
    visit classroom_subject_url(@classroom_subject)
    click_on "Destroy this classroom subject", match: :first

    assert_text "Classroom subject was successfully destroyed"
  end
end
