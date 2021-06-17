class AddChapterRefToResources < ActiveRecord::Migration[6.0]
  def change
    add_reference :resources, :chapter, null: false, foreign_key: true
  end
end
