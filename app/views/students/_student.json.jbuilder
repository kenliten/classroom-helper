json.extract! student, :id, :classroom_id, :firstname, :lastname, :nationality, :gender, :birth_date, :birth_book, :birth_folio, :guardian_relationship, :alergies, :drugs, :emergency_contact_name, :emergency_contact_phone, :check_in_date, :check_out_date, :initial_condition, :user_id, :created_at, :updated_at
json.url student_url(student, format: :json)
