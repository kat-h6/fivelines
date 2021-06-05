class AddColumnsToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :start_time, :datetime
    add_column :lessons, :end_time, :datetime
    add_column :lessons, :rate, :float
    add_column :lessons, :teacher_notes, :text
    add_column :lessons, :student_notes, :text
    add_reference :lessons, :student, null: false
    add_reference :lessons, :teacher, null: false

    add_foreign_key :lessons, :users, column: :student_id
    add_foreign_key :lessons, :users, column: :teacher_id
  end
end
