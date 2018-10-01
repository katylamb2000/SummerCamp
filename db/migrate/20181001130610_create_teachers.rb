class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :username
      t.string :password
      t.integer :camp_id

      t.timestamps
    end
  end
end
