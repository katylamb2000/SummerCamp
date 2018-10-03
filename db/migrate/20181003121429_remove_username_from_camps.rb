class RemoveUsernameFromCamps < ActiveRecord::Migration[5.2]
  def change
    remove_column :camps, :username, :string
    remove_column :camps, :password, :string
  end
end
