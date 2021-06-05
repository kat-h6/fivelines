class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.datetime :date_created
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
