require "test_helper"

class StudentGuardiansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_guardian = student_guardians(:one)
  end

  test "should get index" do
    get student_guardians_url
    assert_response :success
  end

  test "should get new" do
    get new_student_guardian_url
    assert_response :success
  end

  test "should create student_guardian" do
    assert_difference("StudentGuardian.count") do
      post student_guardians_url, params: { student_guardian: { address: @student_guardian.address, city: @student_guardian.city, education_level: @student_guardian.education_level, firstname: @student_guardian.firstname, lastname: @student_guardian.lastname, nid: @student_guardian.nid, notes: @student_guardian.notes, occupation: @student_guardian.occupation, phone: @student_guardian.phone, place: @student_guardian.place, relationship: @student_guardian.relationship, student_id: @student_guardian.student_id, work_phone: @student_guardian.work_phone } }
    end

    assert_redirected_to student_guardian_url(StudentGuardian.last)
  end

  test "should show student_guardian" do
    get student_guardian_url(@student_guardian)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_guardian_url(@student_guardian)
    assert_response :success
  end

  test "should update student_guardian" do
    patch student_guardian_url(@student_guardian), params: { student_guardian: { address: @student_guardian.address, city: @student_guardian.city, education_level: @student_guardian.education_level, firstname: @student_guardian.firstname, lastname: @student_guardian.lastname, nid: @student_guardian.nid, notes: @student_guardian.notes, occupation: @student_guardian.occupation, phone: @student_guardian.phone, place: @student_guardian.place, relationship: @student_guardian.relationship, student_id: @student_guardian.student_id, work_phone: @student_guardian.work_phone } }
    assert_redirected_to student_guardian_url(@student_guardian)
  end

  test "should destroy student_guardian" do
    assert_difference("StudentGuardian.count", -1) do
      delete student_guardian_url(@student_guardian)
    end

    assert_redirected_to student_guardians_url
  end
end
