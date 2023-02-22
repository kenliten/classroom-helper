json.extract! student_guardian, :id, :firstname, :lastname, :relationship, :nid, :address, :place, :city, :phone, :work_phone, :occupation, :education_level, :notes, :student_id, :created_at, :updated_at
json.url student_guardian_url(student_guardian, format: :json)
