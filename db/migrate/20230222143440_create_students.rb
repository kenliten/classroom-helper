class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :classroom, null: false, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :nationality
      t.string :gender
      t.date :birth_date
      t.string :birth_book
      t.string :birth_folio
      t.string :guardian_relationship
      t.string :alergies
      t.string :drugs
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.date :check_in_date
      t.date :check_out_date
      t.string :initial_condition
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
