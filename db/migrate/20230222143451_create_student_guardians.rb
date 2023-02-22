class CreateStudentGuardians < ActiveRecord::Migration[7.0]
  def change
    create_table :student_guardians do |t|
      t.string :firstname
      t.string :lastname
      t.string :relationship
      t.string :nid
      t.string :address
      t.string :place
      t.string :city
      t.string :phone
      t.string :work_phone
      t.string :occupation
      t.string :education_level
      t.text :notes
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
