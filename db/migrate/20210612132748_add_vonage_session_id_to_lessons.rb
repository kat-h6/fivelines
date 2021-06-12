class AddVonageSessionIdToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :vonage_session_id, :string
  end
end
