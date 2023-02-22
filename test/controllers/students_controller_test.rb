require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { alergies: @student.alergies, birth_book: @student.birth_book, birth_date: @student.birth_date, birth_folio: @student.birth_folio, check_in_date: @student.check_in_date, check_out_date: @student.check_out_date, classroom_id: @student.classroom_id, drugs: @student.drugs, emergency_contact_name: @student.emergency_contact_name, emergency_contact_phone: @student.emergency_contact_phone, firstname: @student.firstname, gender: @student.gender, guardian_relationship: @student.guardian_relationship, initial_condition: @student.initial_condition, lastname: @student.lastname, nationality: @student.nationality, user_id: @student.user_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { alergies: @student.alergies, birth_book: @student.birth_book, birth_date: @student.birth_date, birth_folio: @student.birth_folio, check_in_date: @student.check_in_date, check_out_date: @student.check_out_date, classroom_id: @student.classroom_id, drugs: @student.drugs, emergency_contact_name: @student.emergency_contact_name, emergency_contact_phone: @student.emergency_contact_phone, firstname: @student.firstname, gender: @student.gender, guardian_relationship: @student.guardian_relationship, initial_condition: @student.initial_condition, lastname: @student.lastname, nationality: @student.nationality, user_id: @student.user_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
