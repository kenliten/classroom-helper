require "application_system_test_case"

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = notes(:one)
  end

  test "visiting the index" do
    visit notes_url
    assert_selector "h1", text: "Notes"
  end

  test "should create note" do
    visit notes_url
    click_on "New note"

    fill_in "Date", with: @note.date
    fill_in "Description", with: @note.description
    fill_in "Explanation", with: @note.explanation
    fill_in "Grade", with: @note.grade_id
    fill_in "Place", with: @note.place
    fill_in "Time", with: @note.time
    click_on "Create Note"

    assert_text "Note was successfully created"
    click_on "Back"
  end

  test "should update Note" do
    visit note_url(@note)
    click_on "Edit this note", match: :first

    fill_in "Date", with: @note.date
    fill_in "Description", with: @note.description
    fill_in "Explanation", with: @note.explanation
    fill_in "Grade", with: @note.grade_id
    fill_in "Place", with: @note.place
    fill_in "Time", with: @note.time
    click_on "Update Note"

    assert_text "Note was successfully updated"
    click_on "Back"
  end

  test "should destroy Note" do
    visit note_url(@note)
    click_on "Destroy this note", match: :first

    assert_text "Note was successfully destroyed"
  end
end