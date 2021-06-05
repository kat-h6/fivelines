class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.text :details
      t.string :title
      t.datetime :due_date
      t.boolean :completed, default: false
      t.text :feedback
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
