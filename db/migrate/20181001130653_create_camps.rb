class CreateCamps < ActiveRecord::Migration[5.2]
  def change
    create_table :camps do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :location

      t.timestamps
    end
  end
end
