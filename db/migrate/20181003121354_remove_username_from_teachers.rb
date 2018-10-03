class RemoveUsernameFromTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :username, :string
    remove_column :teachers, :password, :string
  end
end
