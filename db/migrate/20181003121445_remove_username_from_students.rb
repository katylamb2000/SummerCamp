class RemoveUsernameFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :username, :string
    remove_column :students, :password, :string
  end
end
