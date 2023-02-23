class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.date :date
      t.time :time
      t.references :classroom, null: false, foreign_key: true
      t.string :place
      t.text :description
      t.text :explanation

      t.timestamps
    end
  end
end
