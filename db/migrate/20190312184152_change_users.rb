class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :lasname, :lastname
  end
end
