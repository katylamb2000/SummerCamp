class AddColumnsToCamp < ActiveRecord::Migration[5.2]
  def change
    add_column :camps, :username, :string
    add_column :camps, :password_digest, :string
    add_column :camps, :cost, :string
    add_column :camps, :dates, :string
    add_column :camps, :description, :string
    add_column :camps, :photo_url, :string
  end
end
