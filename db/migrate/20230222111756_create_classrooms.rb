class CreateClassrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :grade
      t.string :level
      t.string :section
      t.string :journey
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
