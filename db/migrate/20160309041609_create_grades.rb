class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :grade
      t.text :assignment_description
      t.date :due_date
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
