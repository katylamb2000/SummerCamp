class CreateCampTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :camp_teachers do |t|
      t.integer :teacher_id
      t.integer :camp_id

      t.timestamps
    end
  end
end
